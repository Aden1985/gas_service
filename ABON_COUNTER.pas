unit ABON_COUNTER;

interface

uses

  	Classes,Controls,StdCtrls,Forms,Shablon_Edit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus, DBAccess,
  IBC, MemDS, ActnList, cxButtons, Grids, DBGrids, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ExtCtrls, Mask, DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,cxFilterConsts,
  cxFilterControlStrs,cxEditConsts,cxGridExportLink, Buttons;
	
type
TfrABON_COUNTER = class(TForm)
pUpr:TPanel;
gbTable:TcxGroupBox ;
    sgSCHETHIK: TcxGrid;
    cxSCHDBTableView1: TcxGridDBTableView;
    cxNOM_ABON: TcxGridDBColumn;
    cxFIO: TcxGridDBColumn;
NAS_PUNKT:TcxGridDBColumn ;
VU:TcxGridDBColumn ;
UL:TcxGridDBColumn ;
MARKA:TcxGridDBColumn ;
MODEL:TcxGridDBColumn ;
    cxDATA_UST: TcxGridDBColumn;
DAT_OTKL:TcxGridDBColumn ;
    cxSTATUS: TcxGridDBColumn;
    cxSCH: TcxGridLevel;
ActionList1:TActionList ;
Add:TAction ;
Otkl_Prib:TAction ;
KOD_SH:TcxGridDBColumn ;
    cxZAV_NOM: TcxGridDBColumn;
    cxPLOMB: TcxGridDBColumn;
KEM_OPLOMB:TcxGridDBColumn ;
DATA_PLOMB:TcxGridDBColumn ;
DAT_POV:TcxGridDBColumn ;
DAT_ZAM:TcxGridDBColumn ;
POK_UST:TcxGridDBColumn ;
    cxPOK_USL: TcxGridDBColumn;
KON_POK:TcxGridDBColumn ;
ZAMENA:TAction ;
    btAdd: TcxButton;
    actPOISK: TAction;
    pm2: TPopupMenu;
    actPO_NOM: TAction;
    actPO_ADRES: TAction;
    actPO_FIO: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actPO_ZAV_NOM: TAction;
    N4: TMenuItem;
    actPO_NOM_PLOMB: TAction;
    N5: TMenuItem;
    actOTKL_SCH: TAction;
    N6: TMenuItem;
    cxN_POV: TcxGridDBColumn;
    btPOVERKA: TcxButton;
    actESC: TAction;
    btIN_EXCEL: TcxButton;
    BitBtn1: TBitBtn;
    cxDOM: TcxGridDBColumn;
    cxKB: TcxGridDBColumn;
    cxN_SCH: TcxGridDBColumn;
    pm1: TPopupMenu;
    cxPOV: TcxGridDBColumn;
    pm3: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ibIZM_STAT: TIBCSQL;
    cxDATE_NATH_POV: TcxGridDBColumn;
    cxDATE_KON_POV: TcxGridDBColumn;
    cxKOL_SCH: TcxGridDBColumn;
    cxDOM2: TcxGridDBColumn;
    cxPHONE: TcxGridDBColumn;
    cxDATE_IZGOT: TcxGridDBColumn;
    bt1: TcxButton;
    dsetSCH: TIBCQuery;
    dsSCH: TIBCDataSource;
    cxFIO_KONTR: TcxGridDBColumn;
    cxPODVODKA: TcxGridDBColumn;
    cxTO: TcxGridDBColumn;
    cxRAZRST: TcxGridDBColumn;
    cxDATA_DOG: TcxGridDBColumn;
    N10: TMenuItem;
    cxVID_GAZA: TcxGridDBColumn;
    btNASTR: TcxButton;
    actNASTR: TAction;
    cxIZGOTOV: TcxGridDBColumn;
    cxMNOGOET: TcxGridDBColumn;
    cxMESTO_UST: TcxGridDBColumn;
    cxMAGN_PLOMB: TcxGridDBColumn;
    cxN_STAT_DOMA: TcxGridDBColumn;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    cxKOD_PRIB: TcxGridDBColumn;
    cxKOL_KOTL: TcxGridDBColumn;
    cxDATE_INV: TcxGridDBColumn;
    cxPLOMB_SH_MEH: TcxGridDBColumn;
    cxKWMETR: TcxGridDBColumn;
    MGAZ1: TMenuItem;
    MGAZ2: TMenuItem;
	procedure cxSCHDBTableView1DblClick(Sender: TObject);
	procedure FormShow(Sender: TObject);
    procedure btAddMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actPO_NOMExecute(Sender: TObject);
    procedure actPO_FIOExecute(Sender: TObject);
    procedure actPO_ADRESExecute(Sender: TObject);
    procedure actPO_ZAV_NOMExecute(Sender: TObject);
    procedure actPO_NOM_PLOMBExecute(Sender: TObject);
    procedure actOTKL_SCHExecute(Sender: TObject);
    procedure btPOVERKAClick(Sender: TObject);
    procedure actESCExecute(Sender: TObject);
    procedure btIN_EXCELClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N10Click(Sender: TObject);
    procedure actNASTRExecute(Sender: TObject);
    procedure UST_PODV(STAT: Integer);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure MGAZ2Click(Sender: TObject);
    procedure MGAZ1Click(Sender: TObject);

  private
    { Private declarations }
  public
  procedure Redakt;
  procedure FILTR_PO_POV(STAT_POV:String);
  procedure UST_STAT_OBM_F(STAT:Integer);
  end;

var
  frABON_COUNTER: TfrABON_COUNTER;

implementation

uses uProc, KART_PRIB, DMJ,uMain,uException, RashPoisk, SysUtils, Dialogs,
  BOX_COMBO, uGlobalVar, ShellAPI, Windows, POL_TABLE, IniFiles, KART_ABON, 
  ADD_PODVODKA, WaitUnit, SPIS_NZ_MOB, DOP_NAR_ZAD;

{$R *.dfm}

//---------------------------------------------------------------------------
procedure TfrABON_COUNTER.actESCExecute(Sender: TObject);
begin
Close;
end;



procedure TfrABON_COUNTER.actNASTRExecute(Sender: TObject);
begin
if ( MessageDlg('Вы действительно хотите установить настройки таблицы по умолчанию  ?',
			mtConfirmation,[mbYes,mbNo],0)=mrYes)then
      begin
      DeleteFile(PAnsiChar(AnsiString(ProgPath+'abon_counter.ini')));
      ShowMessage('Перезапустите форму');  
      end;
end;

procedure TfrABON_COUNTER.actOTKL_SCHExecute(Sender: TObject);
begin
cxSCHDBTableView1.DataController.Filter.Clear;
cxSCHDBTableView1.DataController.Filter.AddItem(nil,cxSTATUS,foEqual,'-','-');
cxSCHDBTableView1.DataController.Filter.Active:=True;
end;

procedure TfrABON_COUNTER.actPO_ADRESExecute(Sender: TObject);
begin
  frRashPoisk := TfrRashPoisk.Create(Owner);
	frRashPoisk.PROSM := 38;
	frRashPoisk.ShowModal;
  frRashPoisk.Free;
end;

procedure TfrABON_COUNTER.actPO_FIOExecute(Sender: TObject);
begin
  frRashPoisk := TfrRashPoisk.Create(Owner);
	frRashPoisk.PROSM := 38;
	frRashPoisk.ShowModal;
  frRashPoisk.Free;
end;

procedure TfrABON_COUNTER.actPO_NOMExecute(Sender: TObject);
var
NOM_ABON:string;
begin
NOM_ABON:=InputBox('Ввод данных', 'Введите заводской номер счетчика', '');
cxSCHDBTableView1.DataController.Filter.Clear;
cxSCHDBTableView1.DataController.Filter.AddItem(nil,cxNOM_ABON,foEqual,NOM_ABON,NOM_ABON);
cxSCHDBTableView1.DataController.Filter.Active:=True;
end;

procedure TfrABON_COUNTER.actPO_NOM_PLOMBExecute(Sender: TObject);
var
NOM_PLOMB:string;
begin
NOM_PLOMB:=InputBox('Ввод данных', 'Введите заводской номер пломбы', '');
cxSCHDBTableView1.DataController.Filter.Clear;
cxSCHDBTableView1.DataController.Filter.AddItem(nil,cxPLOMB,foEqual,NOM_PLOMB,NOM_PLOMB);
cxSCHDBTableView1.DataController.Filter.Active:=True;
end;

procedure TfrABON_COUNTER.actPO_ZAV_NOMExecute(Sender: TObject);
var
ZAV_NOM:string;
begin
ZAV_NOM:=InputBox('Ввод данных', 'Введите заводской номер счетчика', '');
cxSCHDBTableView1.DataController.Filter.Clear;
cxSCHDBTableView1.DataController.Filter.AddItem(nil,cxZAV_NOM,foEqual,ZAV_NOM,ZAV_NOM);
cxSCHDBTableView1.DataController.Filter.Active:=True;
end;

procedure TfrABON_COUNTER.BitBtn1Click(Sender: TObject);
begin
 dmProc.POISK_KART(2,2,0);
end;

//---------------------------------------------------------------------------
procedure TfrABON_COUNTER.Redakt;
begin
  frKART_PRIB:=TfrKART_PRIB.Create(Owner);
	frKART_PRIB.TIP:=1;
	frKART_PRIB.KOD_PRIB:=dsetSCH.FieldByName('KOD_PRIB').AsInteger;
  frKART_PRIB.ID_PRIB:=dsetSCH.FieldByName('ID').AsInteger;
  frKART_PRIB.ZAV_NOM:=dsetSCH.FieldByName('ZAV_NOM').AsString;
  frKART_PRIB.STATUS_PRIB:=dsetSCH.FieldByName('STATUS').AsString;
	frKART_PRIB.ADD:=0;
	frKART_PRIB.NOM:=dsetSCH.FieldByName('NOM_ABON').AsInteger;
	frKART_PRIB.ZAPOLNI;
	frKART_PRIB.ShowModal;
  frKART_PRIB.Free;  
end;
procedure TfrABON_COUNTER.UST_PODV(STAT: Integer);
var
i,j,KOD_PRIB,nom_abon,VID_PODV,IZGOTOV,GOD_VIP:Integer;
ZAV_NOM,SOOB:string;
Dlina:Real;
begin
  if (STAT=2) then //--при добавлении
  begin
    frADD_PODVODKA:=TfrADD_PODVODKA.Create(Owner);
    try
    if frADD_PODVODKA.ShowModal = mrOk then
    begin
      if (STAT=2) then  SOOB:='Внести данные по подводке ?';
      if (STAT=1) then  SOOB:='Удалить данные по подводке ?';

      if ( MessageDlg(SOOB,mtConfirmation,[mbYes,mbNo],0)=mrNo) then
      begin
      Exit;
      end;

      if (frADD_PODVODKA.cbVID.Text='') then
      begin
        ShowMessage('Вы не указали вид подводки!');
        Exit;
      end;

      if (frADD_PODVODKA.cbVID.KeyValue>1) then
      begin
          if (frADD_PODVODKA.cbIZGOTOV.Text='') then
          begin
            ShowMessage('Вы не указали изготовителя!');
            Exit;
          end;
          if (frADD_PODVODKA.cbGOD.Text='') then
          begin
            ShowMessage('Вы не указали год выпуска!');
            Exit;
          end;

          if (frADD_PODVODKA.cbDLINA.Text='') then
          begin
            ShowMessage('Вы не указали длину подводки!');
            Exit;
          end;
      end;

      VID_PODV:=frADD_PODVODKA.cbVID.KeyValue;

      if frADD_PODVODKA.cbIZGOTOV.Text='' then
      begin
      IZGOTOV:=0;
      end
        else
          IZGOTOV:=frADD_PODVODKA.cbIZGOTOV.KeyValue;

      if (frADD_PODVODKA.cbGOD.Text='') then
      begin
        GOD_VIP:=0;
      end
        else
          GOD_VIP:=StrToInt(frADD_PODVODKA.cbGOD.Text);

      if (frADD_PODVODKA.cbDLINA.Text='') then
      begin
        Dlina:=0;
      end
        else
          Dlina:=StrTofloat(frADD_PODVODKA.cbDLINA.Text);
    end
    else
      Exit;
    finally
    FreeAndNil( frADD_PODVODKA );
    end; 
  end;

  ShowWaitDialog('Формирование', 'Формирование списка', False);

  for i := 0 to cxSCHDBTableView1.Controller.SelectedRecordCount - 1 do
  begin
  j:= cxSCHDBTableView1.Controller.SelectedRecords[i].RecordIndex;
  nom_abon:=StrToInt(cxSCHDBTableView1.DataController.Values[j, 0]);
  KOD_PRIB:=StrToInt(cxSCHDBTableView1.DataController.Values[j, 42]);
  ZAV_NOM:=cxSCHDBTableView1.DataController.Values[j, 15];
    with dmOne.ibIBSQL_DOP do
    begin
       UpdateCaption('Лицевой - '+inttostr(NOM_ABON));
       SQL.Text:='execute procedure add_podvodka(:nom_abon,:tip_prib,:kod_prib,:zav_nom,:kod_podv,:dlina,:god)';
       ParamByName('nom_abon').asInteger:=NOM_ABON;
       ParamByName('tip_prib').asInteger:=1;
       ParamByName('kod_prib').asInteger:=kod_prib;
       ParamByName('zav_nom').asString:=zav_nom;
       ParamByName('dlina').AsFloat:=Dlina;
       ParamByName('GOD').asInteger:=GOD_VIP;

       if (STAT=1) then  //удалить
       begin
       ParamByName('kod_podv').asInteger:=0;
       end;

       if (STAT=2) then  //добавить
       begin
          if (VID_PODV=1) then
          begin
          ParamByName('kod_podv').asInteger:=1;
          end;
          if (VID_PODV>1) then
          begin
          ParamByName('kod_podv').asInteger:=IZGOTOV;
          end;
       end;
       Execute;
    end;
    HideWaitDialog;
  end;

  MessageDlg('Выполнено!', mtInformation,[mbOK] ,0);

  if ( MessageDlg('Обновить данные в таблице ?',
			 mtConfirmation,[mbYes,mbNo],0)=mrYes) then
		begin
    dsetSCH.Close;
    dsetSCH.Open;
    end;
end;

procedure TfrABON_COUNTER.UST_STAT_OBM_F(STAT: Integer);
var
N_STAT:String;
begin
if (STAT=0) then
begin
N_STAT:='родной счетчик';
end;
if (STAT=1) then
begin
N_STAT:='счетчик обм.фонда';
end;

if ( MessageDlg('Вы действительно хотите установить сатус счетчика - '+N_STAT+' ?',
			mtConfirmation,[mbYes,mbNo],0)=mrYes)then begin
   			try
        with ibIZM_STAT do
        begin
        ParamByName('STAT_OLD').AsInteger:=dmProc.dsetF_PRIB.FieldByName('stat_obm_f').AsInteger;
        ParamByName('STAT_NEW').AsInteger:=STAT;
        ParamByName('NOM').AsInteger:=dsetSCH.FieldByName('NOM_ABON').AsInteger;
        ParamByName('KOD').AsInteger:=dmProc.dsetF_PRIB.FieldByName('kod_prib').AsInteger;
        ParamByName('id').AsInteger:=dmProc.dsetF_PRIB.FieldByName('id_prib').AsInteger;
        ParamByName('KOD_OP').AsInteger:=KOD_OP;
        Execute;
        ShowMessage('Изменения сохранены!!');
        end;
			except on E:Exception do
				ShowError('Ошибка','Ошибка при сохранении! ',E.Message,1);
			end;
		end;
end;

//---------------------------------------------------------------------------
procedure TfrABON_COUNTER.cxSCHDBTableView1DblClick(Sender: TObject );
begin
Redakt;	
end;
//---------------------------------------------------------------------------

procedure TfrABON_COUNTER.bt1Click(Sender: TObject);
begin
dmProc.INF_PO_PRIB(1);
end;

procedure TfrABON_COUNTER.btAddMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
pm2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfrABON_COUNTER.btIN_EXCELClick(Sender: TObject);
begin
 ExportGridToExcel(ProgPath + 'Отчет.xls',
 sgSCHETHIK, False, True, True);

ShellExecute(handle,'open',PChar(ProgPath+ 'Отчет.xls'),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrABON_COUNTER.btPOVERKAClick(Sender: TObject);
begin
frBOX_COMBO:=TfrBOX_COMBO.Create(Owner);
frBOX_COMBO.STAT:=1;
frBOX_COMBO.ShowModal;
frBOX_COMBO.Free;
end;

procedure TfrABON_COUNTER.FILTR_PO_POV(STAT_POV: String);
begin
cxSCHDBTableView1.DataController.Filter.Clear;
cxSCHDBTableView1.DataController.Filter.AddItem(nil,cxN_POV,foEqual,STAT_POV,STAT_POV);
cxSCHDBTableView1.DataController.Filter.Active:=True;
end;

procedure TfrABON_COUNTER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cxSCHDBTableView1.StoreToIniFile(ProgPath+'ini/abon_counter.ini', true , [ gsoUseFilter ,  gsoUseSummary ], 'tmp_sch');
end;

procedure TfrABON_COUNTER.FormShow(Sender: TObject );
var
n,i:Integer;
begin
Width  := frMain.Width - 50;
Height := frMain.Height - 100;
//dmProc.INF_PO_PRIB(1);

with dmOne.ibIBSQL_DOP do
begin
sql.Text:='delete from shethik f where coalesce(f.kod_sht,0)=0';
Execute;
end;

dsetSCH.Close;
dsetSCH.Open;
cxSCHDBTableView1.Columns[20].Visible:=False;
cxSCHDBTableView1.Columns[0].Width:=100;
cxSCHDBTableView1.RestoreFromIniFile (ProgPath+'ini/abon_counter.ini', true , true ,[ gsoUseFilter ,  gsoUseSummary ], 'tmp_sch');
cxSCHDBTableView1.DataController.Filter.Clear;

end;

procedure TfrABON_COUNTER.MGAZ1Click(Sender: TObject);
var
i,j,nom_abon:Integer;
begin
  with dmOne.ibIBSQL_DOP do
  begin
  SQL.Text:='delete from tmp_zad_kontr t where t.kod_op=:kod_op;';
  ParamByName('kod_op').AsInteger:=KOD_OP;
  Execute;
  end;

  for i := 0 to cxSCHDBTableView1.Controller.SelectedRecordCount - 1 do
  begin
    j:= cxSCHDBTableView1.Controller.SelectedRecords[i].RecordIndex;
    nom_abon:=cxSCHDBTableView1.DataController.Values[j, 0];

    with dmOne.ibIBSQL_DOP do
    begin
    SQL.Text:='INSERT INTO TMP_ZAD_KONTR (NOM_ABON,kod_op) values (:NOM_ABON,:kod_op)';
    ParamByName('NOM_ABON').AsInteger:=NOM_ABON;
    ParamByName('kod_op').AsInteger:=KOD_OP;
    Execute;
    end;
  end;

  frDOP_NAR_ZAD:=TfrDOP_NAR_ZAD.Create(Owner);
  frDOP_NAR_ZAD.dsetTMP_NZ.Close;
  frDOP_NAR_ZAD.dsetTMP_NZ.SQL.Text:='select S.NOM_ABON, t.NOM_NZ, S.FIO, S.KOD_PUNKT, SP.NAI_PUNKT, S.KOD_VU,' + #13#10 +
  'VU.NAI_VU, S.KOD_UL, UL.NAI_UL, S.KORPUS, s.DOM, s.dom2, S.KB, s.kod_trf,' + #13#10 +
  '(select k.naim_kod from klsfct k where k.kod=1 and k.kod_hc=s.priz) as vid_rash,'+
  'iif(coalesce(s.pr_gw,0)=1,''c.гор.вод.'',''без.гор.вод.'') as GOR_VOD,' + #13#10 +
  'iif(s.kod_geu in (1002,2001),''Ч/С'',''многоэтажка'') as MNOG, sa.obozn, s.date_sver, s.kol_kotl, s.pok_akt, ' + #13#10 +
  's.KOL_JIL, s.KWMETR, '+ #13#10 +
  '(select first 1 sh.plomb_sh_meh from shethik sh where sh.nom_abon=s.nom_abon and coalesce(sh.stat_omb_f,0)=0 AND ((coalesce(SH.pr_zamena,0)=0) or (coalesce(SH.pr_zamena,0)=3))) as plomb_sh_meh '+ #13#10 +
  'from TMP_ZAD_KONTR t,spr_abon s, SP_PUNKT SP,SP_VU VU,SP_UL UL, f_dom f, sp_adres sa' + #13#10 +
  'where t.nom_abon=s.nom_abon' + #13#10 +
  'and S.KOD_PUNKT=SP.KOD_PUNKT' + #13#10 +
  'AND S.KOD_VU=VU.KOD_VU' + #13#10 +
  'AND S.KOD_UL=UL.KOD_UL' + #13#10 +
  'AND T.KOD_OP=:KOD_OP' + #13#10 +
  'AND s.nom_abon=f.nom_abon' + #13#10 +
  'and sa.kod_punkt=s.kod_punkt' + #13#10 +
  'and sa.kod_vu=s.kod_vu' + #13#10 +
  'and sa.kod_ul=s.kod_ul and coalesce(s.stat_arhiv,0)=0 ' + #13#10 +
  'order by s.kod_punkt, s.kod_ul, f.dom,cast(iif(s.kb is null or trim(s.kb)='''',0,trim(s.kb)) as integer)';
  frDOP_NAR_ZAD.dsetTMP_NZ.ParamByName('kod_op').AsInteger:=KOD_OP;
  frDOP_NAR_ZAD.dsetTMP_NZ.Open;     
  frDOP_NAR_ZAD.POK_RASHOD:=0;
  frDOP_NAR_ZAD.ShowModal;
  frDOP_NAR_ZAD.Free;
end;

procedure TfrABON_COUNTER.MGAZ2Click(Sender: TObject);
begin
  frSPIS_NZ_MOB:=TfrSPIS_NZ_MOB.Create(Owner);
  frSPIS_NZ_MOB.ShowModal;
  frSPIS_NZ_MOB.Free;
end;

procedure TfrABON_COUNTER.N10Click(Sender: TObject);
begin
  try
    dmProc.GURNAL_IZM(dsetSCH.FieldByName('NOM_ABON').AsInteger,'shethik',
    'удаление счетчика '+dsetSCH.FieldByName('MARKA').AsString+' '+
    dsetSCH.FieldByName('MODEL').AsString,
    'удаление счетчика '+dsetSCH.FieldByName('MARKA').AsString+' '+
    dsetSCH.FieldByName('MODEL').AsString);
    dsetSCH.Delete;
  except on E:Exception do
    ShowError('Ошибка','Ошибка при удалении записи в таблице shethik!',E.Message,1);
  end;

end;

procedure TfrABON_COUNTER.N12Click(Sender: TObject);
begin
UST_PODV(2);
end;

procedure TfrABON_COUNTER.N13Click(Sender: TObject);
begin
UST_PODV(1);
end;

procedure TfrABON_COUNTER.N7Click(Sender: TObject);
begin
  frKART_ABON := TfrKART_ABON.Create(Owner);
  frKART_ABON.NOM :=dsetSCH.FieldByName('NOM_ABON').AsInteger;
  frKART_ABON.Obnovi;
  frKART_ABON.ShowModal;
  frKART_ABON.Free;
end;

procedure TfrABON_COUNTER.N8Click(Sender: TObject);
begin
UST_STAT_OBM_F(0);
end;

procedure TfrABON_COUNTER.N9Click(Sender: TObject);
begin
UST_STAT_OBM_F(1);
end;

end.
