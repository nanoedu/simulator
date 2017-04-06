unit PortableDeviceApiLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 26.01.2010 10:53:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\portabledeviceapi.dll (1)
// LIBID: {1F001332-1A57-4934-BE31-AFFC99F4EE0A}
// LCID: 0
// Helpfile:
// HelpString: PortableDeviceApi 1.0 Type Library
// DepndLst:
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Symbol 'type' renamed to 'type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants,ShLwApi;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PortableDeviceApiLibMajorVersion = 1;
  PortableDeviceApiLibMinorVersion = 0;

  LIBID_PortableDeviceApiLib: TGUID = '{1F001332-1A57-4934-BE31-AFFC99F4EE0A}';

  IID_IPortableDevice: TGUID = '{625E2DF8-6392-4CF0-9AD1-3CFA5F17775C}';
  CLASS_PortableDevice: TGUID = '{728A21C5-3D9E-48D7-9810-864848F0F404}';
  IID_IPortableDeviceValues: TGUID = '{6848F6F2-3155-4F86-B6F5-263EEEAB3143}';
  IID_ISequentialStream: TGUID = '{0C733A30-2A1C-11CE-ADE5-00AA0044773D}';
  IID_IStream: TGUID = '{0000000C-0000-0000-C000-000000000046}';
  IID_IStorage: TGUID = '{0000000B-0000-0000-C000-000000000046}';
  IID_IEnumSTATSTG: TGUID = '{0000000D-0000-0000-C000-000000000046}';
  IID_IRecordInfo: TGUID = '{0000002F-0000-0000-C000-000000000046}';
  IID_ITypeInfo: TGUID = '{00020401-0000-0000-C000-000000000046}';
  IID_ITypeComp: TGUID = '{00020403-0000-0000-C000-000000000046}';
  IID_ITypeLib: TGUID = '{00020402-0000-0000-C000-000000000046}';
  IID_IPortableDevicePropVariantCollection: TGUID = '{89B2E422-4F1B-4316-BCEF-A44AFEA83EB3}';
  IID_IPortableDeviceKeyCollection: TGUID = '{DADA2357-E0AD-492E-98DB-DD61C53BA353}';
  IID_IPortableDeviceValuesCollection: TGUID = '{6E3F2D79-4E07-48C4-8208-D8C2E5AF4A99}';
  IID_IPropertyStore: TGUID = '{886D8EEB-8CF2-4446-8D02-CDBA1DBDCF99}';
  IID_IPortableDeviceContent: TGUID = '{6A96ED84-7C73-4480-9938-BF5AF477D426}';
  IID_IEnumPortableDeviceObjectIDs: TGUID = '{10ECE955-CF41-4728-BFA0-41EEDF1BBF19}';
  IID_IPortableDeviceProperties: TGUID = '{7F6D695C-03DF-4439-A809-59266BEEE3A6}';
  IID_IPortableDeviceResources: TGUID = '{FD8878AC-D841-4D17-891C-E6829CDB6934}';
  IID_IPortableDeviceCapabilities: TGUID = '{2C8C6DBF-E3DC-4061-BECC-8542E810D126}';
  IID_IPortableDeviceEventCallback: TGUID = '{A8792A31-F385-493C-A893-40F64EB45F6E}';
  IID_IPortableDeviceManager: TGUID = '{A1567595-4C2F-4574-A6FA-ECEF917B9A40}';
  CLASS_PortableDeviceManager: TGUID = '{0AF10CEC-2ECD-4B92-9581-34F6AE0637F3}';

  CLASS_PortableDeviceValues: TGUID = '{0C15D503-D017-47CE-9016-7B3F978721CC}';
  CLASS_PortableDeviceKeyCollection: TGUID = '{DE2D022D-2480-43BE-97F0-D1FA2CF98F4F}';
  CLASS_PortableDevicePropVariantCollection: TGUID = '{08A99E2F-6D6D-4B80-AF5A-BAF2BCBE4CB9}';
  CLASS_PortableDeviceValuesCollection: TGUID = '{3882134D-14CF-4220-9CB4-435F86D83F60}';


// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum tagTYPEKIND
type
  tagTYPEKIND = TOleEnum;
const
  TKIND_ENUM = $00000000;
  TKIND_RECORD = $00000001;
  TKIND_MODULE = $00000002;
  TKIND_INTERFACE = $00000003;
  TKIND_DISPATCH = $00000004;
  TKIND_COCLASS = $00000005;
  TKIND_ALIAS = $00000006;
  TKIND_UNION = $00000007;
  TKIND_MAX = $00000008;

// Constants for enum tagDESCKIND
type
  tagDESCKIND = TOleEnum;
const
  DESCKIND_NONE = $00000000;
  DESCKIND_FUNCDESC = $00000001;
  DESCKIND_VARDESC = $00000002;
  DESCKIND_TYPECOMP = $00000003;
  DESCKIND_IMPLICITAPPOBJ = $00000004;
  DESCKIND_MAX = $00000005;

// Constants for enum tagFUNCKIND
type
  tagFUNCKIND = TOleEnum;
const
  FUNC_VIRTUAL = $00000000;
  FUNC_PUREVIRTUAL = $00000001;
  FUNC_NONVIRTUAL = $00000002;
  FUNC_STATIC = $00000003;
  FUNC_DISPATCH = $00000004;

// Constants for enum tagINVOKEKIND
type
  tagINVOKEKIND = TOleEnum;
const
  INVOKE_FUNC = $00000001;
  INVOKE_PROPERTYGET = $00000002;
  INVOKE_PROPERTYPUT = $00000004;
  INVOKE_PROPERTYPUTREF = $00000008;

// Constants for enum tagCALLCONV
type
  tagCALLCONV = TOleEnum;
const
  CC_FASTCALL = $00000000;
  CC_CDECL = $00000001;
  CC_MSCPASCAL = $00000002;
  CC_PASCAL = $00000002;
  CC_MACPASCAL = $00000003;
  CC_STDCALL = $00000004;
  CC_FPFASTCALL = $00000005;
  CC_SYSCALL = $00000006;
  CC_MPWCDECL = $00000007;
  CC_MPWPASCAL = $00000008;
  CC_MAX = $00000009;

// Constants for enum tagVARKIND
type
  tagVARKIND = TOleEnum;
const
  VAR_PERINSTANCE = $00000000;
  VAR_STATIC = $00000001;
  VAR_CONST = $00000002;
  VAR_DISPATCH = $00000003;

// Constants for enum tagSYSKIND
type
  tagSYSKIND = TOleEnum;
const
  SYS_WIN16 = $00000000;
  SYS_WIN32 = $00000001;
  SYS_MAC = $00000002;
  SYS_WIN64 = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPortableDevice = interface;
  IPortableDeviceValues = interface;
//  ISequentialStream = interface;
//  IStream = interface;
  IStorage = interface;
  IEnumSTATSTG = interface;
  IRecordInfo = interface;
  ITypeInfo = interface;
  ITypeComp = interface;
  ITypeLib = interface;
  IPortableDevicePropVariantCollection = interface;
  IPortableDeviceKeyCollection = interface;
  IPortableDeviceValuesCollection = interface;
  IPropertyStore = interface;
  IPortableDeviceContent = interface;
  IEnumPortableDeviceObjectIDs = interface;
  IPortableDeviceProperties = interface;
  IPortableDeviceResources = interface;
  IPortableDeviceCapabilities = interface;
  IPortableDeviceEventCallback = interface;
  IPortableDeviceManager = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  PortableDevice = IPortableDevice;
  PortableDeviceManager = IPortableDeviceManager;


// *********************************************************************//
// Declaration of structures, unions and aliases.
// *********************************************************************//
  wirePSAFEARRAY = ^PUserType5;
  wireSNB = ^tagRemSNB;
  PUserType6 = ^_FLAGGED_WORD_BLOB; {*}
  PUserType7 = ^_wireVARIANT; {*}
  PUserType14 = ^_wireBRECORD; {*}
  PUserType5 = ^_wireSAFEARRAY; {*}
  PPUserType1 = ^PUserType5; {*}
  PUserType11 = ^tagTYPEDESC; {*}
  PUserType12 = ^tagARRAYDESC; {*}
  PUserType2 = ^tag_inner_PROPVARIANT; {*}
  PUINT1 = ^LongWord; {*}
  PUserType1 = ^_tagpropertykey; {*}
  PUserType3 = ^TGUID; {*}
  PByte1 = ^Byte; {*}
  PUserType4 = ^_FILETIME; {*}
  POleVariant1 = ^OleVariant; {*}
  PUserType8 = ^tagTYPEATTR; {*}
  PUserType9 = ^tagFUNCDESC; {*}
  PUserType10 = ^tagVARDESC; {*}
  PUserType13 = ^tagTLIBATTR; {*}

  _tagpropertykey = packed record
    fmtid: TGUID;
    pid: LongWord;
  end;




  _LARGE_INTEGER = packed record
    QuadPart: Int64;
  end;

  _ULARGE_INTEGER = packed record
    QuadPart: Largeuint;
  end;

  _FILETIME = packed record
    dwLowDateTime: LongWord;
    dwHighDateTime: LongWord;
  end;

  tagCLIPDATA = packed record
    cbSize: LongWord;
    ulClipFmt: Integer;
    pClipData: ^Byte;
  end;

  tagBSTRBLOB = packed record
    cbSize: LongWord;
    pData: ^Byte;
  end;

  tagBLOB = packed record
    cbSize: LongWord;
    pBlobData: ^Byte;
  end;

  tagVersionedStream = packed record
    guidVersion: TGUID;
    pStream: IStream;
  end;

   (* tagSTATSTG = packed record
    pwcsName: PWideChar;
    type_: LongWord;
    cbSize: _ULARGE_INTEGER;
    mtime: _FILETIME;
    ctime: _FILETIME;
    atime: _FILETIME;
    grfMode: LongWord;
    grfLocksSupported: LongWord;
    clsid: TGUID;
    grfStateBits: LongWord;
    reserved: LongWord;
  end;
   *)

  tagRemSNB = packed record
    ulCntStr: LongWord;
    ulCntChar: LongWord;
    rgString: ^Word;
  end;

  tagCAC = packed record
    cElems: LongWord;
    pElems: ^Shortint;
  end;

  tagCAUB = packed record
    cElems: LongWord;
    pElems: ^Byte;
  end;


  _wireSAFEARR_BSTR = packed record
    Size: LongWord;
    aBstr: ^PUserType6;
  end;

  _wireSAFEARR_UNKNOWN = packed record
    Size: LongWord;
    apUnknown: ^IUnknown;
  end;

  _wireSAFEARR_DISPATCH = packed record
    Size: LongWord;
    apDispatch: ^IDispatch;
  end;

  _FLAGGED_WORD_BLOB = packed record
    fFlags: LongWord;
    clSize: LongWord;
    asData: ^Word;
  end;


  _wireSAFEARR_VARIANT = packed record
    Size: LongWord;
    aVariant: ^PUserType7;
  end;


  _wireBRECORD = packed record
    fFlags: LongWord;
    clSize: LongWord;
    pRecInfo: IRecordInfo;
    pRecord: ^Byte;
  end;


  __MIDL_IOleAutomationTypes_0005 = record
    case Integer of
      0: (lptdesc: PUserType11);
      1: (lpadesc: PUserType12);
      2: (hreftype: LongWord);
  end;

  tagTYPEDESC = packed record
    __MIDL__IOleAutomationTypes0004: __MIDL_IOleAutomationTypes_0005;
    vt: Word;
  end;

  tagSAFEARRAYBOUND = packed record
    cElements: LongWord;
    lLbound: Integer;
  end;

  ULONG_PTR = LongWord; 

  tagIDLDESC = packed record
    dwReserved: ULONG_PTR;
    wIDLFlags: Word;
  end;

  DWORD = LongWord; 

  tagPARAMDESCEX = packed record
    cBytes: LongWord;
    varDefaultValue: OleVariant;
  end;

  tagPARAMDESC = packed record
    pparamdescex: ^tagPARAMDESCEX;
    wParamFlags: Word;
  end;

  tagELEMDESC = packed record
    tdesc: tagTYPEDESC;
    paramdesc: tagPARAMDESC;
  end;

  tagFUNCDESC = packed record
    memid: Integer;
    lprgscode: ^SCODE;
    lprgelemdescParam: ^tagELEMDESC;
    funckind: tagFUNCKIND;
    invkind: tagINVOKEKIND;
    callconv: tagCALLCONV;
    cParams: Smallint;
    cParamsOpt: Smallint;
    oVft: Smallint;
    cScodes: Smallint;
    elemdescFunc: tagELEMDESC;
    wFuncFlags: Word;
  end;

  __MIDL_IOleAutomationTypes_0006 = record
    case Integer of
      0: (oInst: LongWord);
      1: (lpvarValue: ^OleVariant);
  end;

  tagVARDESC = packed record
    memid: Integer;
    lpstrSchema: PWideChar;
    __MIDL__IOleAutomationTypes0005: __MIDL_IOleAutomationTypes_0006;
    elemdescVar: tagELEMDESC;
    wVarFlags: Word;
    varkind: tagVARKIND;
  end;

  tagTLIBATTR = packed record
    guid: TGUID;
    lcid: LongWord;
    syskind: tagSYSKIND;
    wMajorVerNum: Word;
    wMinorVerNum: Word;
    wLibFlags: Word;
  end;

  _wireSAFEARR_BRECORD = packed record
    Size: LongWord;
    aRecord: ^PUserType14;
  end;

  _wireSAFEARR_HAVEIID = packed record
    Size: LongWord;
    apUnknown: ^IUnknown;
    iid: TGUID;
  end;

  _BYTE_SIZEDARR = packed record
    clSize: LongWord;
    pData: ^Byte;
  end;

  _SHORT_SIZEDARR = packed record
    clSize: LongWord;
    pData: ^Word;
  end;

  _LONG_SIZEDARR = packed record
    clSize: LongWord;
    pData: ^LongWord;
  end;

  _HYPER_SIZEDARR = packed record
    clSize: LongWord;
    pData: ^Int64;
  end;

  tagCAI = packed record
    cElems: LongWord;
    pElems: ^Smallint;
  end;

  tagCAUI = packed record
    cElems: LongWord;
    pElems: ^Word;
  end;

  tagCAL = packed record
    cElems: LongWord;
    pElems: ^Integer;
  end;

  tagCAUL = packed record
    cElems: LongWord;
    pElems: ^LongWord;
  end;

  tagCAH = packed record
    cElems: LongWord;
    pElems: ^_LARGE_INTEGER;
  end;

  tagCAUH = packed record
    cElems: LongWord;
    pElems: ^_ULARGE_INTEGER;
  end;

  tagCAFLT = packed record
    cElems: LongWord;
    pElems: ^Single;
  end;

  tagCADBL = packed record
    cElems: LongWord;
    pElems: ^Double;
  end;

  tagCABOOL = packed record
    cElems: LongWord;
    pElems: ^WordBool;
  end;

  tagCASCODE = packed record
    cElems: LongWord;
    pElems: ^SCODE;
  end;

  tagCACY = packed record
    cElems: LongWord;
    pElems: ^Currency;
  end;

  tagCADATE = packed record
    cElems: LongWord;
    pElems: ^TDateTime;
  end;

  tagCAFILETIME = packed record
    cElems: LongWord;
    pElems: ^_FILETIME;
  end;

  tagCACLSID = packed record
    cElems: LongWord;
    pElems: ^TGUID;
  end;

  tagCACLIPDATA = packed record
    cElems: LongWord;
    pElems: ^tagCLIPDATA;
  end;

  tagCABSTR = packed record
    cElems: LongWord;
    pElems: ^WideString;
  end;

  tagCABSTRBLOB = packed record
    cElems: LongWord;
    pElems: ^tagBSTRBLOB;
  end;

  tagCALPSTR = packed record
    cElems: LongWord;
    pElems: ^PChar;
  end;

  tagCALPWSTR = packed record
    cElems: LongWord;
    pElems: ^PWideChar;
  end;


  tagCAPROPVARIANT = packed record
    cElems: LongWord;
    pElems: PUserType2;
  end;

  __MIDL___MIDL_itf_PortableDeviceApi_0001_0000_0001 = record
    case Integer of
      0: (cVal: Shortint);
      1: (bVal: Byte);
      2: (iVal: Smallint);
      3: (uiVal: Word);
      4: (lVal: Integer);
      5: (ulVal: LongWord);
      6: (intVal: SYSINT);
      7: (uintVal: SYSUINT);
      8: (hVal: _LARGE_INTEGER);
      9: (uhVal: _ULARGE_INTEGER);
      10: (fltVal: Single);
      11: (dblVal: Double);
      12: (boolVal: WordBool);
      13: (bool: WordBool);
      14: (scode: SCODE);
      15: (cyVal: Currency);
      16: (date: TDateTime);
      17: (filetime: _FILETIME);
      18: (puuid: ^TGUID);
      19: (pClipData: ^tagCLIPDATA);
      20: (bstrVal: {!!WideString}Pointer);
      21: (bstrblobVal: tagBSTRBLOB);
      22: (blob: tagBLOB);
      23: (pszVal: PChar);
      24: (pwszVal: PWideChar);
      25: (punkVal: {!!IUnknown}Pointer);
      26: (pdispVal: {!!IDispatch}Pointer);
      27: (pStream: {!!IStream}Pointer);
      28: (pStorage: {!!IStorage}Pointer);
      29: (pVersionedStream: ^tagVersionedStream);
      30: (parray: wirePSAFEARRAY);
      31: (cac: tagCAC);
      32: (caub: tagCAUB);
      33: (cai: tagCAI);
      34: (caui: tagCAUI);
      35: (cal: tagCAL);
      36: (caul: tagCAUL);
      37: (cah: tagCAH);
      38: (cauh: tagCAUH);
      39: (caflt: tagCAFLT);
      40: (cadbl: tagCADBL);
      41: (cabool: tagCABOOL);
      42: (cascode: tagCASCODE);
      43: (cacy: tagCACY);
      44: (cadate: tagCADATE);
      45: (cafiletime: tagCAFILETIME);
      46: (cauuid: tagCACLSID);
      47: (caclipdata: tagCACLIPDATA);
      48: (cabstr: tagCABSTR);
      49: (cabstrblob: tagCABSTRBLOB);
      50: (calpstr: tagCALPSTR);
      51: (calpwstr: tagCALPWSTR);
      52: (capropvar: tagCAPROPVARIANT);
      53: (pcVal: ^Shortint);
      54: (pbVal: ^Byte);
      55: (piVal: ^Smallint);
      56: (puiVal: ^Word);
      57: (plVal: ^Integer);
      58: (pulVal: ^LongWord);
      59: (pintVal: ^SYSINT);
      60: (puintVal: ^SYSUINT);
      61: (pfltVal: ^Single);
      62: (pdblVal: ^Double);
      63: (pboolVal: ^WordBool);
      64: (pdecVal: ^TDecimal);
      65: (pscode: ^SCODE);
      66: (pcyVal: ^Currency);
      67: (pdate: ^TDateTime);
      68: (pbstrVal: ^WideString);
      69: (ppunkVal: {!!^IUnknown}Pointer);
      70: (ppdispVal: {!!^IDispatch}Pointer);
      71: (pparray: ^wirePSAFEARRAY);
      72: (pvarVal: PUserType2);
  end;


 (* tag_inner_PROPVARIANT = packed record
    vt: Word;
    wReserved1: Byte;
    wReserved2: Byte;
    wReserved3: LongWord;
    __MIDL____MIDL_itf_PortableDeviceApi_0001_00000001: __MIDL___MIDL_itf_PortableDeviceApi_0001_0000_0001;
  end;
  *)
   tag_inner_PROPVARIANT = packed record
    vt:word;
    wReserved1: Byte;
    wReserved2: Byte;
    wReserved3: LongWord;
 case word of
//   VT_EMPTY,
//    VT_NULL: ();
      VT_I1: (cVal: Shortint);
     VT_UI1: (bVal: Byte);
      VT_I2: (iVal: Smallint);
     VT_UI2: (uiVal: Word);
      VT_I4: (lVal: Integer);
     VT_UI4: (ulVal: LongWord);
     VT_INT: (intVal: SYSINT);
    VT_UINT: (uintVal: SYSUINT);
 VT_DECIMAL,
      VT_I8: (hVal: _LARGE_INTEGER);
     VT_UI8: (uhVal: _ULARGE_INTEGER);
      VT_R4: (fltVal: Single);
      VT_R8: (dblVal: Double);
    VT_BOOL: (boolVal: WordBool);
 VT_ILLEGAL: (bool: WordBool);
   VT_ERROR: (scode: SCODE);
      VT_CY: (cyVal: Currency);
    VT_DATE: (date: TDateTime);
VT_FILETIME: (filetime: _FILETIME);
   VT_CLSID: (puuid: ^TGUID);
      VT_CF: (pClipData: ^tagCLIPDATA);
    VT_BSTR: (bstrVal: {!!WideString}Pointer);
//      VT_BSTR_BLOB: (bstrblobVal: tagBSTRBLOB);
VT_BLOB, VT_BLOB_OBJECT: (blob: tagBLOB);
   VT_LPSTR: (pszVal: PChar);
  VT_LPWSTR: (pwszVal: PWideChar);
 VT_UNKNOWN: (punkVal: {!!IUnknown}Pointer);
VT_DISPATCH: (pdispVal: {!!IDispatch}Pointer);
VT_STREAM, VT_STREAMED_OBJECT: (pStream: {!!IStream}Pointer);
VT_STORAGE,  VT_STORED_OBJECT: (pStorage: {!!IStorage}Pointer);
  //    VT_VERSIONED_STREAM: (pVersionedStream: ^tagVersionedStream);
//    30: (parray: wirePSAFEARRAY);
  VT_VECTOR or  VT_I1: (cac: tagCAC);
  VT_VECTOR  or VT_UI1: (caub: tagCAUB);
  VT_VECTOR or VT_I2: (cai: tagCAI);
  VT_VECTOR or VT_UI2: (caui: tagCAUI);
  VT_VECTOR or VT_I4: (cal: tagCAL);
  VT_VECTOR or VT_UI4: (caul: tagCAUL);
  VT_VECTOR or VT_I8: (cah: tagCAH);
  VT_VECTOR or VT_UI8: (cauh: tagCAUH);
  VT_VECTOR or VT_R4: (caflt: tagCAFLT);
  VT_VECTOR or VT_R8: (cadbl: tagCADBL);
  VT_VECTOR or VT_BOOL: (cabool: tagCABOOL);
  VT_VECTOR or VT_ERROR: (cascode: tagCASCODE);
  VT_VECTOR or VT_CY: (cacy: tagCACY);
  VT_VECTOR or VT_DATE: (cadate: tagCADATE);
  VT_VECTOR or VT_FILETIME: (cafiletime: tagCAFILETIME);
  VT_VECTOR or VT_CLSID: (cauuid: tagCACLSID);
  VT_VECTOR or VT_CF: (caclipdata: tagCACLIPDATA);
  VT_VECTOR or VT_BSTR: (cabstr: tagCABSTR);
//      VT_VECTOR or VT_BSTR_BLOB: (cabstrblob: tagCABSTRBLOB);
  VT_VECTOR or VT_LPSTR: (calpstr: tagCALPSTR);
  VT_VECTOR or VT_LPWSTR: (calpwstr: tagCALPWSTR);
  VT_VECTOR or VT_VARIANT: (capropvar: tagCAPROPVARIANT);
  VT_BYREF or VT_I1: (pcVal: ^Shortint);
  VT_BYREF or VT_UI1: (pbVal: ^Byte);
  VT_BYREF or VT_I2: (piVal: ^Smallint);
  VT_BYREF or VT_UI2: (puiVal: ^Word);
  VT_BYREF or VT_I4: (plVal: ^Integer);
  VT_BYREF or VT_UI4: (pulVal: ^LongWord);
  VT_BYREF or VT_INT: (pintVal: ^SYSINT);
  VT_BYREF or VT_UINT: (puintVal: ^SYSUINT);
  VT_BYREF or VT_R4: (pfltVal: ^Single);
  VT_BYREF or VT_R8: (pdblVal: ^Double);
  VT_BYREF or VT_BOOL: (pboolVal: ^WordBool);
  VT_BYREF or VT_DECIMAL: (pdecVal: ^TDecimal);
  VT_BYREF or VT_ERROR: (pscode: ^SCODE);
  VT_BYREF or VT_CY: (pcyVal: ^Currency);
  VT_BYREF or VT_DATE: (pdate: ^TDateTime);
  VT_BYREF or VT_BSTR: (pbstrVal: ^WideString);
  VT_BYREF or VT_UNKNOWN: (ppunkVal: {!!^IUnknown}Pointer);
  VT_BYREF or VT_DISPATCH: (ppdispVal: {!!^IDispatch}Pointer);
  VT_BYREF or VT_ARRAY: (pparray: ^wirePSAFEARRAY);
  VT_BYREF or VT_VARIANT: (pvarVal: PUserType2);
 end;


  __MIDL_IOleAutomationTypes_0004 = record
    case Integer of
      0: (llVal: Int64);
      1: (lVal: Integer);
      2: (bVal: Byte);
      3: (iVal: Smallint);
      4: (fltVal: Single);
      5: (dblVal: Double);
      6: (boolVal: WordBool);
      7: (scode: SCODE);
      8: (cyVal: Currency);
      9: (date: TDateTime);
      10: (bstrVal: ^_FLAGGED_WORD_BLOB);
      11: (punkVal: {!!IUnknown}Pointer);
      12: (pdispVal: {!!IDispatch}Pointer);
      13: (parray: ^PUserType5);
      14: (brecVal: ^_wireBRECORD);
      15: (pbVal: ^Byte);
      16: (piVal: ^Smallint);
      17: (plVal: ^Integer);
      18: (pllVal: ^Int64);
      19: (pfltVal: ^Single);
      20: (pdblVal: ^Double);
      21: (pboolVal: ^WordBool);
      22: (pscode: ^SCODE);
      23: (pcyVal: ^Currency);
      24: (pdate: ^TDateTime);
      25: (pbstrVal: ^PUserType6);
      26: (ppunkVal: {!!^IUnknown}Pointer);
      27: (ppdispVal: {!!^IDispatch}Pointer);
      28: (pparray: ^PPUserType1);
      29: (pvarVal: ^PUserType7);
      30: (cVal: Shortint);
      31: (uiVal: Word);
      32: (ulVal: LongWord);
      33: (ullVal: Largeuint);
      34: (intVal: SYSINT);
      35: (uintVal: SYSUINT);
      36: (decVal: TDecimal);
      37: (pdecVal: ^TDecimal);
      38: (pcVal: ^Shortint);
      39: (puiVal: ^Word);
      40: (pulVal: ^LongWord);
      41: (pullVal: ^Largeuint);
      42: (pintVal: ^SYSINT);
      43: (puintVal: ^SYSUINT);
  end;

  __MIDL_IOleAutomationTypes_0001 = record
    case Integer of
      0: (BstrStr: _wireSAFEARR_BSTR);
      1: (UnknownStr: _wireSAFEARR_UNKNOWN);
      2: (DispatchStr: _wireSAFEARR_DISPATCH);
      3: (VariantStr: _wireSAFEARR_VARIANT);
      4: (RecordStr: _wireSAFEARR_BRECORD);
      5: (HaveIidStr: _wireSAFEARR_HAVEIID);
      6: (ByteStr: _BYTE_SIZEDARR);
      7: (WordStr: _SHORT_SIZEDARR);
      8: (LongStr: _LONG_SIZEDARR);
      9: (HyperStr: _HYPER_SIZEDARR);
  end;

  _wireSAFEARRAY_UNION = packed record
    sfType: LongWord;
    u: __MIDL_IOleAutomationTypes_0001;
  end;

  _wireVARIANT = packed record
    clSize: LongWord;
    rpcReserved: LongWord;
    vt: Word;
    wReserved1: Word;
    wReserved2: Word;
    wReserved3: Word;
    __MIDL__IOleAutomationTypes0002: __MIDL_IOleAutomationTypes_0004;
  end;


  tagTYPEATTR = packed record
    guid: TGUID;
    lcid: LongWord;
    dwReserved: LongWord;
    memidConstructor: Integer;
    memidDestructor: Integer;
    lpstrSchema: PWideChar;
    cbSizeInstance: LongWord;
    typekind: tagTYPEKIND;
    cFuncs: Word;
    cVars: Word;
    cImplTypes: Word;
    cbSizeVft: Word;
    cbAlignment: Word;
    wTypeFlags: Word;
    wMajorVerNum: Word;
    wMinorVerNum: Word;
    tdescAlias: tagTYPEDESC;
    idldescType: tagIDLDESC;
  end;

  tagARRAYDESC = packed record
    tdescElem: tagTYPEDESC;
    cDims: Word;
    rgbounds: ^tagSAFEARRAYBOUND;
  end;


  _wireSAFEARRAY = packed record
    cDims: Word;
    fFeatures: Word;
    cbElements: LongWord;
    cLocks: LongWord;
    uArrayStructs: _wireSAFEARRAY_UNION;
    rgsabound: ^tagSAFEARRAYBOUND;
  end;


// *********************************************************************//
// Interface: IPortableDevice
// Flags:     (0)
// GUID:      {625E2DF8-6392-4CF0-9AD1-3CFA5F17775C}
// *********************************************************************//
  IPortableDevice = interface(IUnknown)
    ['{625E2DF8-6392-4CF0-9AD1-3CFA5F17775C}']
    function Open(pszPnPDeviceID: PWideChar; const pClientInfo: IPortableDeviceValues): HResult; stdcall;
    function SendCommand(dwFlags: LongWord; const pParameters: IPortableDeviceValues;
                         out ppResults: IPortableDeviceValues): HResult; stdcall;
    function Content(out ppContent: IPortableDeviceContent): HResult; stdcall;
    function Capabilities(out ppCapabilities: IPortableDeviceCapabilities): HResult; stdcall;
    function Cancel: HResult; stdcall;
    function Close: HResult; stdcall;
    function Advise(dwFlags: LongWord; const pCallback: IPortableDeviceEventCallback; 
                    const pParameters: IPortableDeviceValues; out ppszCookie: PWideChar): HResult; stdcall;
    function Unadvise(pszCookie: PWideChar): HResult; stdcall;
    function GetPnPDeviceID(out ppszPnPDeviceID: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceValues
// Flags:     (0)
// GUID:      {6848F6F2-3155-4F86-B6F5-263EEEAB3143}
// *********************************************************************//
  IPortableDeviceValues = interface(IUnknown)
    ['{6848F6F2-3155-4F86-B6F5-263EEEAB3143}']
    function GetCount(var pcelt: LongWord): HResult; stdcall;
    function GetAt(index: LongWord; var pKey: _tagpropertykey; var pValue: tag_inner_PROPVARIANT): HResult; stdcall;
    function SetValue(var key: _tagpropertykey; var pValue: tag_inner_PROPVARIANT): HResult; stdcall;
    function GetValue(var key: _tagpropertykey; out pValue: tag_inner_PROPVARIANT): HResult; stdcall;
    function SetStringValue(var key: _tagpropertykey; Value: PWideChar): HResult; stdcall;
    function GetStringValue(var key: _tagpropertykey; out pValue: PWideChar): HResult; stdcall;
    function SetUnsignedIntegerValue(var key: _tagpropertykey; Value: LongWord): HResult; stdcall;
    function GetUnsignedIntegerValue(var key: _tagpropertykey; out pValue: LongWord): HResult; stdcall;
    function SetSignedIntegerValue(var key: _tagpropertykey; Value: Integer): HResult; stdcall;
    function GetSignedIntegerValue(var key: _tagpropertykey; out pValue: Integer): HResult; stdcall;
    function SetUnsignedLargeIntegerValue(var key: _tagpropertykey; Value: Largeuint): HResult; stdcall;
    function GetUnsignedLargeIntegerValue(var key: _tagpropertykey; out pValue: Largeuint): HResult; stdcall;
    function SetSignedLargeIntegerValue(var key: _tagpropertykey; Value: Int64): HResult; stdcall;
    function GetSignedLargeIntegerValue(var key: _tagpropertykey; out pValue: Int64): HResult; stdcall;
    function SetFloatValue(var key: _tagpropertykey; Value: Single): HResult; stdcall;
    function GetFloatValue(var key: _tagpropertykey; out pValue: Single): HResult; stdcall;
    function SetErrorValue(var key: _tagpropertykey; Value: HResult): HResult; stdcall;
    function GetErrorValue(var key: _tagpropertykey; out pValue: HResult): HResult; stdcall;
    function SetKeyValue(var key: _tagpropertykey; var Value: _tagpropertykey): HResult; stdcall;
    function GetKeyValue(var key: _tagpropertykey; out pValue: _tagpropertykey): HResult; stdcall;
    function SetBoolValue(var key: _tagpropertykey; Value: Integer): HResult; stdcall;
    function GetBoolValue(var key: _tagpropertykey; out pValue: Integer): HResult; stdcall;
    function SetIUnknownValue(var key: _tagpropertykey; const pValue: IUnknown): HResult; stdcall;
    function GetIUnknownValue(var key: _tagpropertykey; out ppValue: IUnknown): HResult; stdcall;
    function SetGuidValue(var key: _tagpropertykey; var Value: TGUID): HResult; stdcall;
    function GetGuidValue(var key: _tagpropertykey; out pValue: TGUID): HResult; stdcall;
//    function SetBufferValue(var key: _tagpropertykey; var pValue: Byte; cbValue: LongWord): HResult; stdcall;
//    function GetBufferValue(var key: _tagpropertykey; out ppValue: PByte1; out pcbValue: LongWord): HResult; stdcall;
    function SetBufferValue(var key: _tagpropertykey;  pValue: PByte1; cbValue: LongWord): HResult; stdcall;
    function GetBufferValue(var key: _tagpropertykey; out ppValue: PByte1; out pcbValue: LongWord): HResult; stdcall;
    function SetIPortableDeviceValuesValue(var key: _tagpropertykey;
                                           const pValue: IPortableDeviceValues): HResult; stdcall;
    function GetIPortableDeviceValuesValue(var key: _tagpropertykey;
                                           out ppValue: IPortableDeviceValues): HResult; stdcall;
    function SetIPortableDevicePropVariantCollectionValue(var key: _tagpropertykey; 
                                                          const pValue: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetIPortableDevicePropVariantCollectionValue(var key: _tagpropertykey; 
                                                          out ppValue: IPortableDevicePropVariantCollection): HResult; stdcall;
    function SetIPortableDeviceKeyCollectionValue(var key: _tagpropertykey; 
                                                  const pValue: IPortableDeviceKeyCollection): HResult; stdcall;
    function GetIPortableDeviceKeyCollectionValue(var key: _tagpropertykey; 
                                                  out ppValue: IPortableDeviceKeyCollection): HResult; stdcall;
    function SetIPortableDeviceValuesCollectionValue(var key: _tagpropertykey; 
                                                     const pValue: IPortableDeviceValuesCollection): HResult; stdcall;
    function GetIPortableDeviceValuesCollectionValue(var key: _tagpropertykey; 
                                                     out ppValue: IPortableDeviceValuesCollection): HResult; stdcall;
    function RemoveValue(var key: _tagpropertykey): HResult; stdcall;
    function CopyValuesFromPropertyStore(const pStore: IPropertyStore): HResult; stdcall;
    function CopyValuesToPropertyStore(const pStore: IPropertyStore): HResult; stdcall;
    function Clear: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ISequentialStream
// Flags:     (0)
// GUID:      {0C733A30-2A1C-11CE-ADE5-00AA0044773D}
// *********************************************************************//
 (*ISequentialStream = interface(IUnknown)
    ['{0C733A30-2A1C-11CE-ADE5-00AA0044773D}']
    //function RemoteRead(out pv: Byte; cb: LongWord; out pcbRead: LongWord): HResult; stdcall;
    function RemoteRead(out pv: PByte; cb: LongWord; out pcbRead: LongWord): HResult; stdcall;
    //function RemoteWrite(var pv: Byte; cb: LongWord; out pcbWritten: LongWord): HResult; stdcall;
    function RemoteWrite(var pv: PByte; cb: LongWord; out pcbWritten: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IStream
// Flags:     (0)                                   /
// GUID:      {0000000C-0000-0000-C000-000000000046}
// *********************************************************************//
  IStream = interface(ISequentialStream)
    ['{0000000C-0000-0000-C000-000000000046}']
    function RemoteSeek(dlibMove: _LARGE_INTEGER; dwOrigin: LongWord;
                        out plibNewPosition: _ULARGE_INTEGER): HResult; stdcall;
    function SetSize(libNewSize: _ULARGE_INTEGER): HResult; stdcall;
    function RemoteCopyTo(const pstm: IStream; cb: _ULARGE_INTEGER; out pcbRead: _ULARGE_INTEGER;
                          out pcbWritten: _ULARGE_INTEGER): HResult; stdcall;
    function Commit(grfCommitFlags: LongWord): HResult; stdcall;
    function Revert: HResult; stdcall;
    function LockRegion(libOffset: _ULARGE_INTEGER; cb: _ULARGE_INTEGER; dwLockType: LongWord): HResult; stdcall;
    function UnlockRegion(libOffset: _ULARGE_INTEGER; cb: _ULARGE_INTEGER; dwLockType: LongWord): HResult; stdcall;
    function Stat(out pstatstg: tagSTATSTG; grfStatFlag: LongWord): HResult; stdcall;
    function Clone(out ppstm: IStream): HResult; stdcall;
  end;
 *)
// *********************************************************************//
// Interface: IStorage
// Flags:     (0)
// GUID:      {0000000B-0000-0000-C000-000000000046}
// *********************************************************************//
  IStorage = interface(IUnknown)
    ['{0000000B-0000-0000-C000-000000000046}']
    function CreateStream(pwcsName: PWideChar; grfMode: LongWord; reserved1: LongWord;
                          reserved2: LongWord; out ppstm: IStream): HResult; stdcall;
    function RemoteOpenStream(pwcsName: PWideChar; cbReserved1: LongWord; var reserved1: Byte;
                              grfMode: LongWord; reserved2: LongWord; out ppstm: IStream): HResult; stdcall;
    function CreateStorage(pwcsName: PWideChar; grfMode: LongWord; reserved1: LongWord;
                           reserved2: LongWord; out ppstg: IStorage): HResult; stdcall;
    function OpenStorage(pwcsName: PWideChar; const pstgPriority: IStorage; grfMode: LongWord; 
                         var snbExclude: tagRemSNB; reserved: LongWord; out ppstg: IStorage): HResult; stdcall;
    function RemoteCopyTo(ciidExclude: LongWord; var rgiidExclude: TGUID; 
                          var snbExclude: tagRemSNB; const pstgDest: IStorage): HResult; stdcall;
    function MoveElementTo(pwcsName: PWideChar; const pstgDest: IStorage; pwcsNewName: PWideChar; 
                           grfFlags: LongWord): HResult; stdcall;
    function Commit(grfCommitFlags: LongWord): HResult; stdcall;
    function Revert: HResult; stdcall;
    function RemoteEnumElements(reserved1: LongWord; cbReserved2: LongWord; var reserved2: Byte;
                                reserved3: LongWord; out ppenum: IEnumSTATSTG): HResult; stdcall;
    function DestroyElement(pwcsName: PWideChar): HResult; stdcall;
    function RenameElement(pwcsOldName: PWideChar; pwcsNewName: PWideChar): HResult; stdcall;
    function SetElementTimes(pwcsName: PWideChar; var pctime: _FILETIME; var patime: _FILETIME; 
                             var pmtime: _FILETIME): HResult; stdcall;
    function SetClass(var clsid: TGUID): HResult; stdcall;
    function SetStateBits(grfStateBits: LongWord; grfMask: LongWord): HResult; stdcall;
    function Stat(out pstatstg: tagSTATSTG; grfStatFlag: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEnumSTATSTG
// Flags:     (0)
// GUID:      {0000000D-0000-0000-C000-000000000046}
// *********************************************************************//
  IEnumSTATSTG = interface(IUnknown)
    ['{0000000D-0000-0000-C000-000000000046}']
    function RemoteNext(celt: LongWord; out rgelt: tagSTATSTG; out pceltFetched: LongWord): HResult; stdcall;
    function Skip(celt: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppenum: IEnumSTATSTG): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRecordInfo
// Flags:     (0)
// GUID:      {0000002F-0000-0000-C000-000000000046}
// *********************************************************************//
  IRecordInfo = interface(IUnknown)
    ['{0000002F-0000-0000-C000-000000000046}']
    function RecordInit(out pvNew: Pointer): HResult; stdcall;
    function RecordClear(var pvExisting: Pointer): HResult; stdcall;
    function RecordCopy(var pvExisting: Pointer; out pvNew: Pointer): HResult; stdcall;
    function GetGuid(out pguid: TGUID): HResult; stdcall;
    function GetName(out pbstrName: WideString): HResult; stdcall;
    function GetSize(out pcbSize: LongWord): HResult; stdcall;
    function GetTypeInfo(out ppTypeInfo: ITypeInfo): HResult; stdcall;
    function GetField(var pvData: Pointer; szFieldName: PWideChar; out pvarField: OleVariant): HResult; stdcall;
    function GetFieldNoCopy(var pvData: Pointer; szFieldName: PWideChar; out pvarField: OleVariant;
                            out ppvDataCArray: Pointer): HResult; stdcall;
    function PutField(wFlags: LongWord; var pvData: Pointer; szFieldName: PWideChar; 
                      var pvarField: OleVariant): HResult; stdcall;
    function PutFieldNoCopy(wFlags: LongWord; var pvData: Pointer; szFieldName: PWideChar; 
                            var pvarField: OleVariant): HResult; stdcall;
    function GetFieldNames(var pcNames: LongWord; out rgBstrNames: WideString): HResult; stdcall;
    function IsMatchingType(const pRecordInfo: IRecordInfo): Integer; stdcall;
    function RecordCreate: Pointer; stdcall;
    function RecordCreateCopy(var pvSource: Pointer; out ppvDest: Pointer): HResult; stdcall;
    function RecordDestroy(var pvRecord: Pointer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeInfo
// Flags:     (0)
// GUID:      {00020401-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeInfo = interface(IUnknown)
    ['{00020401-0000-0000-C000-000000000046}']
    function RemoteGetTypeAttr(out ppTypeAttr: PUserType8; out pDummy: DWORD): HResult; stdcall;
    function GetTypeComp(out ppTComp: ITypeComp): HResult; stdcall;
    function RemoteGetFuncDesc(index: SYSUINT; out ppFuncDesc: PUserType9; out pDummy: DWORD): HResult; stdcall;
    function RemoteGetVarDesc(index: SYSUINT; out ppVarDesc: PUserType10; out pDummy: DWORD): HResult; stdcall;
    function RemoteGetNames(memid: Integer; out rgBstrNames: WideString; cMaxNames: SYSUINT; 
                            out pcNames: SYSUINT): HResult; stdcall;
    function GetRefTypeOfImplType(index: SYSUINT; out pRefType: LongWord): HResult; stdcall;
    function GetImplTypeFlags(index: SYSUINT; out pImplTypeFlags: SYSINT): HResult; stdcall;
    function LocalGetIDsOfNames: HResult; stdcall;
    function LocalInvoke: HResult; stdcall;
    function RemoteGetDocumentation(memid: Integer; refPtrFlags: LongWord; 
                                    out pbstrName: WideString; out pBstrDocString: WideString; 
                                    out pdwHelpContext: LongWord; out pBstrHelpFile: WideString): HResult; stdcall;
    function RemoteGetDllEntry(memid: Integer; invkind: tagINVOKEKIND; refPtrFlags: LongWord; 
                               out pBstrDllName: WideString; out pbstrName: WideString; 
                               out pwOrdinal: Word): HResult; stdcall;
    function GetRefTypeInfo(hreftype: LongWord; out ppTInfo: ITypeInfo): HResult; stdcall;
    function LocalAddressOfMember: HResult; stdcall;
    function RemoteCreateInstance(var riid: TGUID; out ppvObj: IUnknown): HResult; stdcall;
    function GetMops(memid: Integer; out pBstrMops: WideString): HResult; stdcall;
    function RemoteGetContainingTypeLib(out ppTLib: ITypeLib; out pIndex: SYSUINT): HResult; stdcall;
    function LocalReleaseTypeAttr: HResult; stdcall;
    function LocalReleaseFuncDesc: HResult; stdcall;
    function LocalReleaseVarDesc: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeComp
// Flags:     (0)
// GUID:      {00020403-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeComp = interface(IUnknown)
    ['{00020403-0000-0000-C000-000000000046}']
    function RemoteBind(szName: PWideChar; lHashVal: LongWord; wFlags: Word; 
                        out ppTInfo: ITypeInfo; out pDescKind: tagDESCKIND; 
                        out ppFuncDesc: PUserType9; out ppVarDesc: PUserType10; 
                        out ppTypeComp: ITypeComp; out pDummy: DWORD): HResult; stdcall;
    function RemoteBindType(szName: PWideChar; lHashVal: LongWord; out ppTInfo: ITypeInfo): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeLib
// Flags:     (0)
// GUID:      {00020402-0000-0000-C000-000000000046}
// *********************************************************************//
  ITypeLib = interface(IUnknown)
    ['{00020402-0000-0000-C000-000000000046}']
    function RemoteGetTypeInfoCount(out pcTInfo: SYSUINT): HResult; stdcall;
    function GetTypeInfo(index: SYSUINT; out ppTInfo: ITypeInfo): HResult; stdcall;
    function GetTypeInfoType(index: SYSUINT; out pTKind: tagTYPEKIND): HResult; stdcall;
    function GetTypeInfoOfGuid(var guid: TGUID; out ppTInfo: ITypeInfo): HResult; stdcall;
    function RemoteGetLibAttr(out ppTLibAttr: PUserType13; out pDummy: DWORD): HResult; stdcall;
    function GetTypeComp(out ppTComp: ITypeComp): HResult; stdcall;
    function RemoteGetDocumentation(index: SYSINT; refPtrFlags: LongWord; 
                                    out pbstrName: WideString; out pBstrDocString: WideString;
                                    out pdwHelpContext: LongWord; out pBstrHelpFile: WideString): HResult; stdcall;
    function RemoteIsName(szNameBuf: PWideChar; lHashVal: LongWord; out pfName: Integer; 
                          out pBstrLibName: WideString): HResult; stdcall;
    function RemoteFindName(szNameBuf: PWideChar; lHashVal: LongWord; out ppTInfo: ITypeInfo;
                            out rgMemId: Integer; var pcFound: Word; out pBstrLibName: WideString): HResult; stdcall;
    function LocalReleaseTLibAttr: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDevicePropVariantCollection
// Flags:     (0)
// GUID:      {89B2E422-4F1B-4316-BCEF-A44AFEA83EB3}
// *********************************************************************//
  IPortableDevicePropVariantCollection = interface(IUnknown)
    ['{89B2E422-4F1B-4316-BCEF-A44AFEA83EB3}']
    function GetCount(var pcElems: LongWord): HResult; stdcall;
    function GetAt(dwIndex: LongWord; var pValue: tag_inner_PROPVARIANT): HResult; stdcall;
    function Add(var pValue: tag_inner_PROPVARIANT): HResult; stdcall;
    function GetType(out pvt: Word): HResult; stdcall;
    function ChangeType(vt: Word): HResult; stdcall;
    function Clear: HResult; stdcall;
    function RemoveAt(dwIndex: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceKeyCollection
// Flags:     (0)
// GUID:      {DADA2357-E0AD-492E-98DB-DD61C53BA353}
// *********************************************************************//
  IPortableDeviceKeyCollection = interface(IUnknown)
    ['{DADA2357-E0AD-492E-98DB-DD61C53BA353}']
    function GetCount(var pcElems: LongWord): HResult; stdcall;
    function GetAt(dwIndex: LongWord; var pKey: _tagpropertykey): HResult; stdcall;
    function Add(var key: _tagpropertykey): HResult; stdcall;
    function Clear: HResult; stdcall;
    function RemoveAt(dwIndex: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceValuesCollection
// Flags:     (0)
// GUID:      {6E3F2D79-4E07-48C4-8208-D8C2E5AF4A99}
// *********************************************************************//
  IPortableDeviceValuesCollection = interface(IUnknown)
    ['{6E3F2D79-4E07-48C4-8208-D8C2E5AF4A99}']
    function GetCount(var pcElems: LongWord): HResult; stdcall;
    function GetAt(dwIndex: LongWord; out ppValues: IPortableDeviceValues): HResult; stdcall;
    function Add(const pValues: IPortableDeviceValues): HResult; stdcall;
    function Clear: HResult; stdcall;
    function RemoveAt(dwIndex: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPropertyStore
// Flags:     (0)
// GUID:      {886D8EEB-8CF2-4446-8D02-CDBA1DBDCF99}
// *********************************************************************//
  IPropertyStore = interface(IUnknown)
    ['{886D8EEB-8CF2-4446-8D02-CDBA1DBDCF99}']
    function GetCount(out cProps: LongWord): HResult; stdcall;
    function GetAt(iProp: LongWord; out pKey: _tagpropertykey): HResult; stdcall;
    function GetValue(var key: _tagpropertykey; out pv: tag_inner_PROPVARIANT): HResult; stdcall;
    function SetValue(var key: _tagpropertykey; var propvar: tag_inner_PROPVARIANT): HResult; stdcall;
    function Commit: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceContent
// Flags:     (0)
// GUID:      {6A96ED84-7C73-4480-9938-BF5AF477D426}
// *********************************************************************//
  IPortableDeviceContent = interface(IUnknown)
    ['{6A96ED84-7C73-4480-9938-BF5AF477D426}']
    function EnumObjects(dwFlags: LongWord; pszParentObjectID: PWideChar;
                         const pFilter: IPortableDeviceValues; 
                         out ppenum: IEnumPortableDeviceObjectIDs): HResult; stdcall;
    function Properties(out ppProperties: IPortableDeviceProperties): HResult; stdcall;
    function Transfer(out ppResources: IPortableDeviceResources): HResult; stdcall;
    function CreateObjectWithPropertiesOnly(const pValues: IPortableDeviceValues;
                                            var ppszObjectID: PWideChar): HResult; stdcall;
    function CreateObjectWithPropertiesAndData(const pValues: IPortableDeviceValues;
                                               out ppData: IStream;
                                               var pdwOptimalWriteBufferSize: LongWord;
                                               var ppszCookie: PWideChar): HResult; stdcall;
    function Delete(dwOptions: LongWord; const pObjectIDs: IPortableDevicePropVariantCollection; 
                    var ppResults: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetObjectIDsFromPersistentUniqueIDs(const pPersistentUniqueIDs: IPortableDevicePropVariantCollection; 
                                                 out ppObjectIDs: IPortableDevicePropVariantCollection): HResult; stdcall;
    function Cancel: HResult; stdcall;
    function Move(const pObjectIDs: IPortableDevicePropVariantCollection; 
                  pszDestinationFolderObjectID: PWideChar; 
                  var ppResults: IPortableDevicePropVariantCollection): HResult; stdcall;
    function Copy(const pObjectIDs: IPortableDevicePropVariantCollection; 
                  pszDestinationFolderObjectID: PWideChar; 
                  var ppResults: IPortableDevicePropVariantCollection): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IEnumPortableDeviceObjectIDs
// Flags:     (0)
// GUID:      {10ECE955-CF41-4728-BFA0-41EEDF1BBF19}
// *********************************************************************//
  IEnumPortableDeviceObjectIDs = interface(IUnknown)
    ['{10ECE955-CF41-4728-BFA0-41EEDF1BBF19}']
    function Next(cObjects: LongWord; out pObjIDs: PWideChar; var pcFetched: LongWord): HResult; stdcall;
    function Skip(cObjects: LongWord): HResult; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppenum: IEnumPortableDeviceObjectIDs): HResult; stdcall;
    function Cancel: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceProperties
// Flags:     (0)
// GUID:      {7F6D695C-03DF-4439-A809-59266BEEE3A6}
// *********************************************************************//
  IPortableDeviceProperties = interface(IUnknown)
    ['{7F6D695C-03DF-4439-A809-59266BEEE3A6}']
    function GetSupportedProperties(pszObjectID: PWideChar; out ppKeys: IPortableDeviceKeyCollection): HResult; stdcall;
    function GetPropertyAttributes(pszObjectID: PWideChar; var key: _tagpropertykey; 
                                   out ppAttributes: IPortableDeviceValues): HResult; stdcall;
    function GetValues(pszObjectID: PWideChar; const pKeys: IPortableDeviceKeyCollection; 
                       out ppValues: IPortableDeviceValues): HResult; stdcall;
    function SetValues(pszObjectID: PWideChar; const pValues: IPortableDeviceValues; 
                       out ppResults: IPortableDeviceValues): HResult; stdcall;
    function Delete(pszObjectID: PWideChar; const pKeys: IPortableDeviceKeyCollection): HResult; stdcall;
    function Cancel: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceResources
// Flags:     (0)
// GUID:      {FD8878AC-D841-4D17-891C-E6829CDB6934}
// *********************************************************************//
  IPortableDeviceResources = interface(IUnknown)
    ['{FD8878AC-D841-4D17-891C-E6829CDB6934}']
    function GetSupportedResources(pszObjectID: PWideChar; out ppKeys: IPortableDeviceKeyCollection): HResult; stdcall;
    function GetResourceAttributes(pszObjectID: PWideChar; var key: _tagpropertykey; 
                                   out ppResourceAttributes: IPortableDeviceValues): HResult; stdcall;
    //function GetStream(pszObjectID: PWideChar; var key: _tagpropertykey; dwMode: LongWord;
                      // var pdwOptimalBufferSize: LongWord; out ppStream: IStream): HResult; stdcall;
    function GetStream(pszObjectID: PWideChar; var key: _tagpropertykey; dwMode: LongWord;
                      var pdwOptimalBufferSize: LongWord; out ppStream: IStream): HResult; stdcall;
    function Delete(pszObjectID: PWideChar; const pKeys: IPortableDeviceKeyCollection): HResult; stdcall;
    function Cancel: HResult; stdcall;
    function CreateResource(const pResourceAttributes: IPortableDeviceValues; out ppData: IStream; 
                            var pdwOptimalWriteBufferSize: LongWord; var ppszCookie: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceCapabilities
// Flags:     (0)
// GUID:      {2C8C6DBF-E3DC-4061-BECC-8542E810D126}
// *********************************************************************//
  IPortableDeviceCapabilities = interface(IUnknown)
    ['{2C8C6DBF-E3DC-4061-BECC-8542E810D126}']
    function GetSupportedCommands(out ppCommands: IPortableDeviceKeyCollection): HResult; stdcall;
    function GetCommandOptions(var Command: _tagpropertykey; out ppOptions: IPortableDeviceValues): HResult; stdcall;
    function GetFunctionalCategories(out ppCategories: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetFunctionalObjects(var Category: TGUID; 
                                  out ppObjectIDs: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetSupportedContentTypes(var Category: TGUID; 
                                      out ppContentTypes: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetSupportedFormats(var ContentType: TGUID; 
                                 out ppFormats: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetSupportedFormatProperties(var Format: TGUID; 
                                          out ppKeys: IPortableDeviceKeyCollection): HResult; stdcall;
    function GetFixedPropertyAttributes(var Format: TGUID; var key: _tagpropertykey; 
                                        out ppAttributes: IPortableDeviceValues): HResult; stdcall;
    function Cancel: HResult; stdcall;
    function GetSupportedEvents(out ppEvents: IPortableDevicePropVariantCollection): HResult; stdcall;
    function GetEventOptions(var Event: TGUID; out ppOptions: IPortableDeviceValues): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceEventCallback
// Flags:     (0)
// GUID:      {A8792A31-F385-493C-A893-40F64EB45F6E}
// *********************************************************************//
  IPortableDeviceEventCallback = interface(IUnknown)
    ['{A8792A31-F385-493C-A893-40F64EB45F6E}']
    function OnEvent(const pEventParameters: IPortableDeviceValues): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IPortableDeviceManager
// Flags:     (0)
// GUID:      {A1567595-4C2F-4574-A6FA-ECEF917B9A40}
// *********************************************************************//
  IPortableDeviceManager = interface(IUnknown)
    ['{A1567595-4C2F-4574-A6FA-ECEF917B9A40}']
//    function GetDevices(var pPnPDeviceIDs: PWideChar;var  pcPnPDeviceIDs:LongWord): HResult; stdcall;
    function GetDevices(pPnPDeviceIDs: PWideChar;var  pcPnPDeviceIDs:LongWord): HResult; stdcall;
    function RefreshDeviceList: HResult; stdcall;
 //   function GetDeviceFriendlyName(pszPnPDeviceID: PWideChar; var pDeviceFriendlyName: Word;
 //                                  var pcchDeviceFriendlyName: LongWord): HResult; stdcall;
     function GetDeviceFriendlyName(pszPnPDeviceID: PWideChar;var pDeviceFriendlyName:WideChar;
                                   var pcchDeviceFriendlyName: LongWord): HResult; stdcall;
    function GetDeviceDescription(pszPnPDeviceID: PWideChar; var pDeviceDescription: Word;
                                  var pcchDeviceDescription: LongWord): HResult; stdcall;
    function GetDeviceManufacturer(pszPnPDeviceID: PWideChar; var pDeviceManufacturer: Word; 
                                   var pcchDeviceManufacturer: LongWord): HResult; stdcall;
    function GetDeviceProperty(pszPnPDeviceID: PWideChar; pszDevicePropertyName: PWideChar; 
                               var pData: Byte; var pcbData: LongWord; var pdwType: LongWord): HResult; stdcall;
    function GetPrivateDevices(var pPnPDeviceIDs: PWideChar; var pcPnPDeviceIDs: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoPortableDevice provides a Create and CreateRemote method to
// create instances of the default interface IPortableDevice exposed by              
// the CoClass PortableDevice. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoPortableDevice = class
    class function Create: IPortableDevice;
    class function CreateRemote(const MachineName: string): IPortableDevice;
  end;

// *********************************************************************//
// The Class CoPortableDeviceManager provides a Create and CreateRemote method to
// create instances of the default interface IPortableDeviceManager exposed by
// the CoClass PortableDeviceManager. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoPortableDeviceManager = class
    class function Create: IPortableDeviceManager;
    class function CreateRemote(const MachineName: string): IPortableDeviceManager;
  end;
  CoPortableDeviceValues = class
    class function Create: IPortableDeviceValues;
    class function CreateRemote(const MachineName: string): IPortableDeviceValues;
  end;

// *********************************************************************//
// The Class CoPortableDeviceKeyCollection provides a Create and CreateRemote method to          
// create instances of the default interface IPortableDeviceKeyCollection exposed by              
// the CoClass PortableDeviceKeyCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPortableDeviceKeyCollection = class
    class function Create: IPortableDeviceKeyCollection;
    class function CreateRemote(const MachineName: string): IPortableDeviceKeyCollection;
  end;

// *********************************************************************//
// The Class CoPortableDevicePropVariantCollection provides a Create and CreateRemote method to          
// create instances of the default interface IPortableDevicePropVariantCollection exposed by              
// the CoClass PortableDevicePropVariantCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPortableDevicePropVariantCollection = class
    class function Create: IPortableDevicePropVariantCollection;
    class function CreateRemote(const MachineName: string): IPortableDevicePropVariantCollection;
  end;

// *********************************************************************//
// The Class CoPortableDeviceValuesCollection provides a Create and CreateRemote method to
// create instances of the default interface IPortableDeviceValuesCollection exposed by              
// the CoClass PortableDeviceValuesCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPortableDeviceValuesCollection = class
    class function Create: IPortableDeviceValuesCollection;
    class function CreateRemote(const MachineName: string): IPortableDeviceValuesCollection;
  end;

 function DEFINE_CONST_PROPERTYKEY(d1:longword;d2:word;d3:word;b0:byte;b1:byte;b2:byte;b3:byte;b4:byte;b5:byte;b6:byte;b7:byte; pid:longword):_tagpropertykey;



implementation

uses ComObj;

function DEFINE_CONST_PROPERTYKEY(d1:longword;d2:word;d3:word;b0:byte;b1:byte;b2:byte;b3:byte;b4:byte;b5:byte;b6:byte;b7:byte;pid:longword):_tagpropertykey;
 var  name:_tagpropertykey;
 begin
  name.fmtid.D1:=d1;
  name.fmtid.D2:=d2;
  name.fmtid.D3:=d3;
  name.fmtid.D4[0]:=b0;
  name.fmtid.D4[1]:=b1;
  name.fmtid.D4[2]:=b2;
  name.fmtid.D4[3]:=b3;
  name.fmtid.D4[4]:=b4;
  name.fmtid.D4[5]:=b5;
  name.fmtid.D4[6]:=b6;
  name.fmtid.D4[7]:=b7;
  name.pid:=pid;
  result:=name;
end;

class function CoPortableDevice.Create: IPortableDevice;
begin
  Result := CreateComObject(CLASS_PortableDevice) as IPortableDevice;
end;

class function CoPortableDevice.CreateRemote(const MachineName: string): IPortableDevice;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDevice) as IPortableDevice;
end;
class function CoPortableDeviceManager.Create: IPortableDeviceManager;
begin
 Result := CreateComObject(CLASS_PortableDeviceManager) as IPortableDeviceManager;
end;

class function CoPortableDeviceManager.CreateRemote(const MachineName: string): IPortableDeviceManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDeviceManager) as IPortableDeviceManager;
end;
class function CoPortableDeviceValues.Create: IPortableDeviceValues;
begin
  Result := CreateComObject(CLASS_PortableDeviceValues) as IPortableDeviceValues;
end;

class function CoPortableDeviceValues.CreateRemote(const MachineName: string): IPortableDeviceValues;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDeviceValues) as IPortableDeviceValues;
end;

class function CoPortableDeviceKeyCollection.Create: IPortableDeviceKeyCollection;
begin
  Result := CreateComObject(CLASS_PortableDeviceKeyCollection) as IPortableDeviceKeyCollection;
end;

class function CoPortableDeviceKeyCollection.CreateRemote(const MachineName: string): IPortableDeviceKeyCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDeviceKeyCollection) as IPortableDeviceKeyCollection;
end;

class function CoPortableDevicePropVariantCollection.Create: IPortableDevicePropVariantCollection;
begin
  Result := CreateComObject(CLASS_PortableDevicePropVariantCollection) as IPortableDevicePropVariantCollection;
end;

class function CoPortableDevicePropVariantCollection.CreateRemote(const MachineName: string): IPortableDevicePropVariantCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDevicePropVariantCollection) as IPortableDevicePropVariantCollection;
end;

class function CoPortableDeviceValuesCollection.Create: IPortableDeviceValuesCollection;
begin
  Result := CreateComObject(CLASS_PortableDeviceValuesCollection) as IPortableDeviceValuesCollection;
end;

class function CoPortableDeviceValuesCollection.CreateRemote(const MachineName: string): IPortableDeviceValuesCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PortableDeviceValuesCollection) as IPortableDeviceValuesCollection;
end;


end.
