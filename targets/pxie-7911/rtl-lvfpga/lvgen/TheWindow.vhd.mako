------------------------------------------------------------------------------
--
-- File: DmaPortWindowTemplate.vhd
-- Author: Daria Tioc-Deac
-- Original Project: DmaPort Communication Interface
-- Date: 20 December 2011
--
------------------------------------------------------------------------------
-- (c) 2026 Copyright National Instruments Corporation
--
-- SPDX-License-Identifier: MIT
------------------------------------------------------------------------------
--
-- Purpose:
-- Dummy window for VSMAKE to work. All signals will be driven from the appropiate
-- clocks and ensure that they are not optimized away.
--
------------------------------------------------------------------------------
-- githubvisible=true

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library work;
use work.PkgNiUtilities.all;

use work.PkgDmaPortCommIfcArbiter.all;

-- The pkg that specifies several signals used by the user VI and register
-- framework.
use work.PkgCommunicationInterface.all;
use work.PkgDmaPortCommunicationInterface.all;

-- The pkg containing some configuration info on the communication interface,
-- such as the number of DMA channels and size of the DMA FIFO's.
use work.PkgCommIntConfiguration.all;

-- The pkg containing information on the DmaPort configuration.
use work.PkgNiDmaConfig.all;

-- The pkg containing the definitions for the FIFO interface signals.
use work.PkgDmaPortDmaFifos.all;

-- This package contains the definitions for the interface between the NI DMA IP and
-- the application specific logic
use work.PkgNiDma.all;

-- The package contain data types definitions needed to define Master Port interfaces.
use work.PkgDmaPortCommIfcMasterPort.all;
use work.PkgDmaPortCommIfcMasterPortFlatTypes.all;

entity TheWindow is
  port(

% if include_custom_io:
    -----------------------------------
    -- CUSTOM BOARD IO
    -----------------------------------
% for signal in custom_signals:
    ${signal['name']} : ${signal['direction']} ${signal['type']}; -- ${signal['lv_name']}
% endfor
% else:
      -----------------------------------
      -- CUSTOM BOARD IO NOT USED
      -----------------------------------
% endif

    -----------------------------------
    -- Communication interface ports
    -----------------------------------
    -- Reset ports
    aBusReset : in boolean;

    -- Register Access/ PIO Ports
    bRegPortIn      : in  RegPortIn_t;
    bRegPortOut     : out RegPortOut_t;
    bRegPortTimeout : in  boolean;

    -- DMA Stream Ports
    dInputStreamInterfaceToFifo    : in  InputStreamInterfaceToFifoArray_t (Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dInputStreamInterfaceFromFifo  : out InputStreamInterfaceFromFifoArray_t (Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dOutputStreamInterfaceToFifo   : in  OutputStreamInterfaceToFifoArray_t (Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dOutputStreamInterfaceFromFifo : out OutputStreamInterfaceFromFifoArray_t (Larger(kNumberOfDmaChannels, 1)-1 downto 0);

    -- IRQ Ports
    bIrqToInterface : out IrqToInterfaceArray_t(Larger(kNumberOfIrqs, 1)-1 downto 0);

    -- MasterPort Ports
    dNiFpgaMasterWriteRequestFromMaster : out NiFpgaMasterWriteRequestFromMasterArray_t (Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteRequestToMaster   : in  NiFpgaMasterWriteRequestToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteDataFromMaster    : out NiFpgaMasterWriteDataFromMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteDataToMaster      : in  NiFpgaMasterWriteDataToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteStatusToMaster    : in  NiFpgaMasterWriteStatusToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);

    dNiFpgaMasterReadRequestFromMaster : out NiFpgaMasterReadRequestFromMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterReadRequestToMaster   : in  NiFpgaMasterReadRequestToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterReadDataToMaster      : in  NiFpgaMasterReadDataToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);

    -----------------------------------
    -- Clocks from TopLevel
    -----------------------------------
    DmaClk         : in std_logic;
    BusClk         : in std_logic;
    ReliableClkIn  : in std_logic;
    PllClk80       : in std_logic;
    DlyRefClk      : in std_logic;
    PxieClk100     : in std_logic;
    dHmbDmaClkSocket  : in std_logic;
    dLlbDmaClkSocket  : in std_logic;


    -----------------------------------
    -- Clock/Sync IO Node ports
    -----------------------------------
    pIntSync100            : in    std_logic;
    aIntClk10              : in    std_logic;

    -----------------------------------
    -- Target Method and Properties ports
    -----------------------------------
    bdIFifoRdData               : out std_logic_vector(63 downto 0);
    bdIFifoRdDataValid          : out std_logic;
    bdIFifoRdReadyForInput      : in  std_logic;
    bdIFifoRdIsError            : out std_logic;
    bdIFifoWrData               : in  std_logic_vector(63 downto 0);
    bdIFifoWrDataValid          : in  std_logic;
    bdIFifoWrReadyForOutput     : out std_logic;
    bdAxiStreamRdFromClipTData  : in  std_logic_vector(31 downto 0);
    bdAxiStreamRdFromClipTLast  : in  std_logic;
    bdAxiStreamRdFromClipTValid : in  std_logic;
    bdAxiStreamRdToClipTReady   : out std_logic;
    bdAxiStreamWrToClipTData    : out std_logic_vector(31 downto 0);
    bdAxiStreamWrToClipTLast    : out std_logic;
    bdAxiStreamWrToClipTValid   : out std_logic;
    bdAxiStreamWrFromClipTReady : in  std_logic;

    -----------------------------------
    -- Pass through LabVIEW FPGA ports
    -----------------------------------

    ----------------------------------------
    -- Trigger Routing Socketed CLIP
    ----------------------------------------
    PxieClk100Trigger  : in  std_logic;
    pIntSync100Trigger : in  std_logic;
    dTdcAssert         : out std_logic;
    dDevClkEn          : in  std_logic;
    sTdcDeassert       : out std_logic;
    aIntClk10Trigger   : in  std_logic;
    --ID Signals from Routing CLIP
    bRoutingClipPresent      : out std_logic;
    bRoutingClipNiCompatible : out std_logic;

    BusClkTrigger : in std_logic;
    abBusResetTrigger : in std_logic;

    -- From PkgBaRegPort
    -- RegPortIn_t Size = Address 28 Data 64 WrStrobes 8 RdStrobes 8 = 108
    -- RegPortOut_t Size = Data 64 + Ack 1 = 65
    bTriggerRoutingBaRegPortInAddress  : in std_logic_vector(27 downto 0);
    bTriggerRoutingBaRegPortInData     : in std_logic_vector(63 downto 0);
    bTriggerRoutingBaRegPortInWtStrobe : in std_logic_vector(7 downto 0);
    bTriggerRoutingBaRegPortInRdStrobe : in std_logic_vector(7 downto 0);

    bTriggerRoutingBaRegPortOutData : out std_logic_vector(63 downto 0);
    bTriggerRoutingBaRegPortOutAck  : out std_logic;

    aPxiTrigDataIn         : in  std_logic_vector(7 downto 0);
    aPxiTrigDataOut        : out std_logic_vector(7 downto 0);
    aPxiTrigDataTri        : out std_logic_vector(7 downto 0);
    aPxiStarData           : in    std_logic;
    aPxieDstarB            : in    std_logic;
    aPxieDstarC            : out   std_logic;

    -----------------------------------------------------------------------------
    --HMB Interface
    -----------------------------------------------------------------------------
    dHmbDramAddrFifoAddr : out std_logic_vector(31 downto 0);
    dHmbDramAddrFifoCmd : out std_logic_vector(2 downto 0);
    dHmbDramAddrFifoFull : in std_logic;
    dHmbDramAddrFifoWrEn : out std_logic;
    dHmbDramRdDataValid : in std_logic;
    dHmbDramRdFifoDataOut : in std_logic_vector(1023 downto 0);
    dHmbDramWrFifoDataIn : out std_logic_vector(1023 downto 0);
    dHmbDramWrFifoFull : in std_logic;
    dHmbDramWrFifoMaskData : out std_logic_vector(127 downto 0);
    dHmbDramWrFifoWrEn : out std_logic;
    dHmbPhyInitDoneForLvfpga : in std_logic;
    dLlbDramAddrFifoAddr : out std_logic_vector(31 downto 0);
    dLlbDramAddrFifoCmd : out std_logic_vector(2 downto 0);
    dLlbDramAddrFifoFull : in std_logic;
    dLlbDramAddrFifoWrEn : out std_logic;
    dLlbDramRdDataValid : in std_logic;
    dLlbDramRdFifoDataOut : in std_logic_vector(1023 downto 0);
    dLlbDramWrFifoDataIn : out std_logic_vector(1023 downto 0);
    dLlbDramWrFifoFull : in std_logic;
    dLlbDramWrFifoMaskData : out std_logic_vector(127 downto 0);
    dLlbDramWrFifoWrEn : out std_logic;
    dLlbPhyInitDoneForLvfpga : in std_logic;

    -----------------------------------
    -- Clocks from TheWindow
    -----------------------------------
    TopLevelClkOut : out std_logic;
    ReliableClkOut : out std_logic;

    -----------------------------------
    -- Diagram/Reset/Clock status
    -----------------------------------
    rBaseClksValid             : in  std_logic := '1';
    tDiagramActive             : out std_logic;
    rDiagramReset              : out std_logic;
    aDiagramReset              : out std_logic;
    rDerivedClockLostLockError : out std_logic;
    rGatedBaseClksValid        : in  std_logic := '1';
    aSafeToEnableGatedClks     : out std_logic
    );

end TheWindow;

architecture behavioral of TheWindow is

  --vhook_sigstart
  --vhook_sigend

  signal rTrigReadData_ms, rTrigReadData : std_logic;

begin

end architecture Behavioral;
