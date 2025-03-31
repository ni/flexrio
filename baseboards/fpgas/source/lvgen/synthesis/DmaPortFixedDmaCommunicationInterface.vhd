-------------------------------------------------------------------------------
--
-- File: DmaPortFixedDmaCommunicationInterface.vhd
-- Author: Paul Butler
-- Original Project: LabVIEW FPGA
-- Date: 9 October 2014
--
-------------------------------------------------------------------------------
-- (c) 2007 Copyright National Instruments Corporation
-- All Rights Reserved
-- National Instruments Internal Information
-------------------------------------------------------------------------------
--
-- Purpose:
--
--   **** This is an empty synthesis stub to cut off vsmake from following into the files
--   for the DmaPortFixedDmaCommunicationInterface, because LVFPGA already follows all the
--   files it needs to in order to build this file and its dependencies. We don't want to
--   print LV's dependencies ourselves, or anything that may conflic there. ****
--
--   This is the top level file for the DmaPort communication interface for LabVIEW FPGA.
--   It connects directly the NI DMA IP and the interface to TheWindow.
--
-- This is a version of DmaPortCommunicationInterface with additional
-- ports for accessing the DmaPort from DMA or MasterPort channels in
-- the fixed logic.
-------------------------------------------------------------------------------
--
-- userhdlbuild=visible


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
  use work.PkgDmaPortDmaFifosFlatTypes.all;

  -- This package contains the definitions for the interface between the NI DMA IP and
  -- the application specific logic
  use work.PkgNiDma.all;

  -- The package contain data types definitions needed to define Master Port interfaces.
  use work.PkgDmaPortCommIfcMasterPort.all;
  use work.PkgDmaPortCommIfcMasterPortFlatTypes.all;

  use work.PkgDmaPortCommIfcInputDataControl.all;

entity DmaPortFixedDmaCommunicationInterface is

  port (
    aReset                                   : in  boolean;
    dReset                                   : in  boolean;
    DmaClk                                   : in  std_logic;
    IrqClk                                   : in  std_logic;
    dNiDmaInputRequestToDma                  : out NiDmaInputRequestToDma_t;
    dNiDmaInputRequestFromDma                : in  NiDmaInputRequestFromDma_t;
    dNiDmaInputDataToDma                     : out NiDmaInputDataToDma_t;
    dNiDmaInputDataFromDma                   : in  NiDmaInputDataFromDma_t;
    dNiDmaInputStatusFromDma                 : in  NiDmaInputStatusFromDma_t;
    dNiDmaOutputRequestToDma                 : out NiDmaOutputRequestToDma_t;
    dNiDmaOutputRequestFromDma               : in  NiDmaOutputRequestFromDma_t;
    dNiDmaOutputDataFromDma                  : in  NiDmaOutputDataFromDma_t;
    dNiDmaHighSpeedSinkFromDma               : in  NiDmaHighSpeedSinkFromDma_t;
    dInputStreamInterfaceFromFifo            : in  InputStreamInterfaceFromFifoArray_t(Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dInputStreamInterfaceToFifo              : out InputStreamInterfaceToFifoArray_t(Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dOutputStreamInterfaceFromFifo           : in  OutputStreamInterfaceFromFifoArray_t(Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dOutputStreamInterfaceToFifo             : out OutputStreamInterfaceToFifoArray_t(Larger(kNumberOfDmaChannels, 1)-1 downto 0);
    dNiFpgaMasterWriteRequestFromMasterArray : in  NiFpgaMasterWriteRequestFromMasterArray_t (Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteRequestToMasterArray   : out NiFpgaMasterWriteRequestToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteDataFromMasterArray    : in  NiFpgaMasterWriteDataFromMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteDataToMasterArray      : out NiFpgaMasterWriteDataToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterWriteStatusToMasterArray    : out NiFpgaMasterWriteStatusToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterReadRequestFromMasterArray  : in  NiFpgaMasterReadRequestFromMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterReadRequestToMasterArray    : out NiFpgaMasterReadRequestToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaMasterReadDataToMasterArray       : out NiFpgaMasterreadDataToMasterArray_t(Larger(kNumberOfMasterPorts, 1)-1 downto 0);
    dNiFpgaInputRequestToDmaArray            : in  NiDmaInputRequestToDmaArray_t (kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaInputRequestFromDmaArray          : out NiDmaInputRequestFromDmaArray_t (kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaInputDataToDmaArray               : in  NiDmaInputDataToDmaArray_t (kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaInputDataFromDmaArray             : out NiDmaInputDataFromDmaArray_t (kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaInputStatusFromDmaArray           : out NiDmaInputStatusFromDmaArray_t (kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaOutputRequestToDmaArray           : in  NiDmaOutputRequestToDmaArray_t (kNiFpgaFixedOutputPorts-1 downto 0);
    dNiFpgaOutputRequestFromDmaArray         : out NiDmaOutputRequestFromDmaArray_t (kNiFpgaFixedOutputPorts-1 downto 0);
    dNiFpgaOutputDataFromDmaArray            : out NiDmaOutputDataFromDmaArray_t (kNiFpgaFixedOutputPorts-1 downto 0);
    dNiFpgaInputArbReq                       : in  NiDmaArbReqArray_t(kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaInputArbGrant                     : out NiDmaArbGrantArray_t(kNiFpgaFixedInputPorts-1 downto 0);
    dNiFpgaOutputArbReq                      : in  NiDmaArbReqArray_t(kNiFpgaFixedOutputPorts-1 downto 0);
    dNiFpgaOutputArbGrant                    : out NiDmaArbGrantArray_t(kNiFpgaFixedOutputPorts-1 downto 0);
    iLvFpgaIrq                               : in  IrqToInterfaceArray_t(Larger(kNumberOfIrqs, 1)-1 downto 0);
    dFixedLogicDmaIrq                        : in  IrqStatusArray_t;
    dIrq                                     : out std_logic_vector(kNumberOfIrqs-1 downto 0);
    dRegPortIn                               : in  RegPortIn_t;
    dRegPortOut                              : out RegPortOut_t);

end entity DmaPortFixedDmaCommunicationInterface;

architecture struct of DmaPortFixedDmaCommunicationInterface is

begin  -- architecture struct



end architecture struct;
