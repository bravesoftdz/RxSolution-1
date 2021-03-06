unit rxDispensing_Unt_Print;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus;

procedure Print_Rx_Prescription(appHandle : THandle ; prmConStr : String ;
    prmRxID : String); stdcall;

procedure Print_Dosing_StandardListOf(prmConStr : string ; prmGenericNameFilter
    : string ; prmDosingIDFilter : string); stdcall;

procedure Print_Patient_ListOf(appHandle : THandle ; prmConStr : string ;
    prmType : integer ; prmFilter : String = ''); stdcall;

procedure Print_Batch_01(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string; prmpost : string); stdcall;

procedure Print_Batch_03(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string); stdcall;

//SM  11/07/2007
procedure Print_Batch_07(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string); stdcall;

procedure Print_Batch_02(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmpost : string); stdcall;

procedure Print_Batch_05(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string); stdcall;

//MC - 20/08/2012
procedure Print_Batch_11(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;

//MC - 12/02/2013
procedure Print_Batch_14(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;


procedure Print_Batch_06(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string); stdcall;

//MC - 21/08/2012
procedure Print_Batch_12(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string); stdcall;

procedure Print_Batch_08(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string); stdcall;

procedure Print_Batch_09(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string); stdcall;

procedure Print_Batch_10(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string ;  prmpost : string); stdcall;

    //mc - 21/08/2012
procedure Print_Batch_13(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string ;  prmpost : string; prmPrescriptionNo: string); stdcall;

procedure EditBatchLabels(appHandle : THandle ; prmConStr : string; vOption: integer);stdcall;

implementation

uses rxDispensing_Dm_Print;

procedure Print_Rx_Prescription(appHandle : THandle ; prmConStr : String ;
    prmRxID : String);
const
  ErrMsg = 'PrintDLL - Method:Print_Rx_Prescription';
begin

  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Rx_Prescription(prmConStr, prmRxID);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;

end;

procedure Print_Dosing_StandardListOf(prmConStr : string ; prmGenericNameFilter
    : string ; prmDosingIDFilter : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Dosing_StandardListOf';
begin

  try
    dmPrint := TdmPrint.Create(nil);
    try
      dmPrint.Dosing_ListOf(prmConStr, prmGenericNameFilter, prmDosingIDFilter);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;

end;

procedure Print_Patient_ListOf(appHandle : THandle ; prmConStr : string ;
    prmType : integer ; prmFilter : String = '');
const
  ErrMsg = 'PrintDLL - Method:Print_Patient_ListOf';
begin

  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Patient_ListOf(prmConStr, prmType, prmFilter);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;

end;

procedure Print_Batch_01(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string;  prmpost : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_01';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
//      dmPrint.Batch_01_QualityAssurance(prmConStr, prmRouteName);
      dmPrint.Batch_01_QualityAssurance(prmConStr, prmRouteName, prmDateFrom,
                                        prmDateTo, prmClinic, prmRxOrigin,
                                        prmPrintShipped, prmpost);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

procedure Print_Batch_03(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_03';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_03_DeliveryConfirmation(prmConStr, prmRouteName, prmDateFrom,
                                            prmDateTo, prmClinic, prmRxOrigin,
                                            prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//SM  11/07/2007
procedure Print_Batch_07(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_07';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
     dmPrint.Batch_01_CheckList(prmConStr, prmRouteName, prmDateFrom,
                                            prmDateTo, prmClinic, prmRxOrigin,
                                            prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//SM 12 May 2008
procedure Print_Batch_08(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_08';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
     dmPrint.Batch_08_ShortRxList(prmConStr, prmRouteName,
    prmDateFrom, prmDateTo, prmClinic, prmRxOrigin,
     prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//SM 02 June 2008
procedure Print_Batch_09(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_09';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
     dmPrint.Batch_09_ProductNeedsList(prmConStr, prmRouteName,
    prmDateFrom, prmDateTo, prmClinic, prmRxOrigin,
     prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

procedure Print_Batch_10(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string;  prmpost : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_10';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_10_TrailerLabels(prmConStr, prmRouteName, prmDateFrom,
                                        prmDateTo, prmClinic, prmRxOrigin,
                                        prmPrintShipped, prmpost);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;


//mc - 21/08/2012
procedure Print_Batch_13(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin : string ;
    prmPrintShipped : string;  prmpost : string; prmPrescriptionNo: string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_13';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_13_TrailerLabels(prmConStr, prmRouteName, prmDateFrom,
                                        prmDateTo, prmClinic, prmRxOrigin,
                                        prmPrintShipped, prmpost, prmPrescriptionNo);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;


procedure Print_Batch_02(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmpost : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_02';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_02_Picklists(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication,
                                 prmPrintShipped, prmpost);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

procedure Print_Batch_05(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_05';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_05_PicklistsLabel(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication,
                                 prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//mc - 20/08/2012
procedure Print_Batch_11(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_11';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_11_PicklistsLabel(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication,
                                 prmPrintShipped,prmPrescriptionNo );
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;


//mc - 20/08/2012
procedure Print_Batch_14(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmpost : string; prmPrintShipped : string; prmPrescriptionNo: string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_14';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_14_Printing(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication, prmpost,
                                 prmPrintShipped,prmPrescriptionNo );
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;






procedure Print_Batch_06(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_06';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_06_PicklistsAddressLabels(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication,
                                 prmPrintShipped);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//MC - 21/08/2012
procedure  Print_Batch_12(appHandle : THandle ; prmConStr, prmRouteName : string
    ; prmDateFrom, prmDateTo : TDateTime ; prmClinic, prmRxOrigin, prmSchedule,
    prmATC, prmIndication : string ; prmPrintShipped : string; prmPrescriptionNo: string);
const
  ErrMsg = 'PrintDLL - Method:Print_Batch_12';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.Batch_12_PicklistsAddressLabels(prmConStr, prmRouteName, prmDateFrom,
                                 prmDateTo, prmClinic, prmRxOrigin,
                                 prmSchedule, prmATC, prmIndication,
                                 prmPrintShipped, prmPrescriptionNo);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

//SM - 11 Mar 2013
procedure  EditBatchLabels(appHandle : THandle ; prmConStr : string; vOption: integer);
const
  ErrMsg = 'PrintDLL - Method:EditBatchLabels';
begin
  try
    Application.Handle := appHandle;
    dmPrint := TdmPrint.Create(Application);
    try
      dmPrint.EditRxLabel(prmConStr, vOption);
    except
      on E:Exception do raise Exception.Create(E.Message + #13 + ErrMsg);
    end;
  finally
    dmPrint.Free;
  end;
end;

end.
