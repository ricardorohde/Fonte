unit uLogin;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
   cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, jpeg,
   cxImage, ExtCtrls, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, ToolWin,
   ActnCtrls, Data.DB, Uni, AdvGlowButton, Vcl.Buttons, cxClasses,
  JvAutoComplete, DateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses;

type
   TfrmLogin = class(TForm)
      cxLookAndFeelController1: TcxLookAndFeelController;
      cbEmpresa: TComboBox;
      Panel1: TPanel;
      imgLogin: TImage;
      edSenha: TEdit;
      lbEmpresa: TLabel;
      btnEntrar: TAdvGlowButton;
      JvAutoComplete: TJvLookupAutoComplete;
    cboUsuario: TComboBox;
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure cbEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormShow(Sender: TObject);
      procedure btnEntrarClick(Sender: TObject);
      procedure btnCancelClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      function Valida_Usuario(sUsuario, sSenha: String): Boolean;
   private
      procedure CarregarUsuarios();
   public
      { Public declarations }
      procedure VerificarLiberacao;
   end;

type
   TEmpresa = Class(TObject)
      iEMP: Integer;
      sEMP:string;
   End;

var
   frmLogin: TfrmLogin;
   lstEMP: TEmpresa;


implementation

uses uMenu, uNovaSenha, Funcao_DB, uFuncoes, System.IniFiles, uPadrao, uLiberacao,
  uConfiguracao;

{$R *.dfm}

function TfrmLogin.Valida_Usuario(sUsuario, sSenha: String): Boolean;
var
   qr,qrEmpresa:  TUniQuery;
begin
   Result := False;
   qr := TUniQuery.Create(nil);
   with qr, SQl do
   begin
      Connection := frmMenu.Conexao;
      Add(' SELECT USU.USU_001, USU.USU_002, ');
      Add(' b_acesso_venda_balcao, ');
      Add(' b_acesso_venda_mesa, ');
      Add(' b_acesso_venda_comanda, ');
      Add(' b_acesso_venda_delivery, ');
      Add(' b_acesso_venda_pdv, ');
      Add(' b_acesso_venda_touch, ');
      Add(' b_acesso_caixa, ');
      Add(' b_alteracao_estoque, ');
      Add(' b_cancelamento_mesa, ');
      Add(' b_cancelamento_pdv, ');
      Add(' b_cancelamento_balcao, ');
      Add(' b_transferencia_mesa, ');
      Add(' b_alteracao_precou_venda, ');
      Add(' b_acesso_produtos, ');
      Add(' b_acesso_clientes, ');
      Add(' b_acesso_cpagar_creceber, ');
      Add(' b_acesso_mov_caixa, ');
      Add(' b_acesso_usuarios, ');
      Add(' b_acesso_configuracao, ');
      Add(' b_reabrir_mesa_comanda, ');
      Add(' b_cancelamento_delivery, ');
      Add(' b_acesso_abertura_caixa ');
      Add(' FROM USUARIOS USU ');
      Add(' WHERE upper(USU.USU_003) = upper(:USUARIO) ');
      Add(' and USU.SIT_001 = 4 ');   //Somente ativos
      //
      if sUsuario <> 'ADMIN' then
         Add('   AND USU.USU_004 = :SENHA ');
      //
      Add('   AND USU.DAT_001_3 IS NULL ');
      ParamByName('USUARIO').AsString := sUsuario;
      //
      if sUsuario <> 'ADMIN' then
         ParamByName('SENHA').AsString := sSenha;
      //
      Open;
      qrEmpresa := TUniQuery.Create(nil);
      qrEmpresa.Connection:= frmMenu.Conexao;

      qrEmpresa.Close;
      qrEmpresa.SQL.Text:= 'select identificador from empresas';
      qrEmpresa.Open;
      //
     if RecordCount > 0 then
       begin
        if uppercase(qrEmpresa.FieldByName('identificador').AsString) ='Infor Restaurante Bar' THEN
        begin
          recproj.sInfoDevSistema1 := 'Sistema desenvolvido por INFOR ';
          recproj.sInfoDevSistema2 := 'Sistema desenvolvido por INFOR';
          recproj.sSiteDevSistema  := '';
        end

        else if uppercase(qrEmpresa.FieldByName('identificador').AsString)='Infor Restaurante Bar' THEN  // Claudio S�o Paulo
        begin
          recproj.sInfoDevSistema1 := 'Sistema desenvolvido por ELITE STORY' ;
          recproj.sInfoDevSistema2 := 'Sistema desenvolvido por ELITE STORY ';
          recproj.sSiteDevSistema  := '';
        end ;


       // frmMenu.Caption:= uppercase(qrEmpresa.FieldByName('identificador').AsString);
        frmmenu.cabecalho:= recproj.sInfoDevSistema1;
        RecProj.sUsuario := qr.FieldByName('USU_002').AsString;
        RecProj.iUsuario := qr.FieldByName('USU_001').AsInteger;
        RecProj.sLoginUsuario := sUsuario;


        if uppercase(qrEmpresa.FieldByName('identificador').AsString)='Infor Restaurante Bar' THEN  // Claudio S�o Paulo
        begin


        end;
//        RecProj.MailPort := 587;
//        RecProj.MailHost := 'smtp.gmail.com';
//        RecProj.MailUsername := 'nferpsistema@gmail.com';
//        RecProj.MailPassword := 'jussara123';
        RecProj.MailPort := 587;  //465 : gmail ; 587 : bol
        RecProj.MailHost := 'smtps.bol.com.br'; // smtp.gmail.com
        RecProj.MailUsername := '';    //
        RecProj.MailPassword := '';   //1..0

        Result := True;
        if uppercase(qrEmpresa.FieldByName('identificador').AsString)='ELITE STORY' THEN  // Claudio S�o Paulo
        begin
          RecProj.sSoftwareHouse := 'Infor Restaurante Bar';
        end
        else
          RecProj.sSoftwareHouse := 'Infor Restaurante Bar';
        Result := True;

      end;
   end;
   FreeAndNil(qr);
   FreeAndNil(qrEmpresa);
end;

procedure TfrmLogin.VerificarLiberacao;
var
  validacao : string;
  str_data_inicial, str_data_final , str_ultima_data, serial_hd :string;
  num_dias : integer;
  ok : boolean;
  procedure abrirLiberacao;
  begin
    frmLiberacao := TfrmLiberacao.Create(Self);
    frmLiberacao.ShowModal;
    if frmLiberacao.tag =0 then application.Terminate else VerificarLiberacao;
    FreeAndNil(frmLiberacao);
    ok:=false;
  end;
begin
  ok:=true;
  validacao := LerStringConfig('ASSINATURA_VALIDACAO', frmMenu.cdsCFG.FileName);

  if trim(validacao)<>'' then
  begin
    if DecodificaAssinaturaValidacao(validacao,RecProj.dInicioLiberacao,
                                               RecProj.dValidadeLiberacao,
                                               RecProj.dUltimoAcesso, serial_hd) then
    begin
      //verifica se a data do computador e maior que a data final
      if Date > RecProj.dValidadeLiberacao then
      begin
        Application.MessageBox('Licen�a do sistema expirada!', 'Aten��o', MB_ICONWARNING);
        abrirLiberacao;
      end;
      //verifica se a data do computador e maior que a data final
      if RecProj.dInicioLiberacao > Date  then
      begin
        Application.MessageBox('O computador encontra-se fora do per�odo da licen�a!', 'Aten��o', MB_ICONWARNING);
        abrirLiberacao;
      end;
      //verifica se o usu�rio n�o mudou a data do computador para frente ou para tr�s
      if RecProj.dUltimoAcesso > Date then
      begin
        Application.MessageBox('N�o foi possivel fazer a valida��o do sistema, altera��o de data local detectada!', 'Aten��o', MB_ICONWARNING);
        abrirLiberacao;
      end;
      //verifica se o n�mero de s�rie do hd da m�quina � o mesmo do arquivo de configura��o
      if  trim(SerialHardDrive('C')) <> trim(serial_hd) then
      begin
        Application.MessageBox('N�o foi possivel fazer a valida��o do sistema, o arquivo de configura��o n�o pertence a este computador!', 'Aten��o', MB_ICONWARNING);
        abrirLiberacao;
      end;

      num_dias:= DaysBetween(RecProj.dValidadeLiberacao, Date);
      if (num_dias<=5) and ok then   // 5 dias antes do vencimento , avisa que vencer� a licen�a
      begin
        if Application.MessageBox(pchar(format('A licen�a do sistema expira em %d dias! Gostaria de abrir a libera��o agora?', [num_dias])), 'Aten��o', MB_ICONQUESTION + MB_YESNO)=mrYes then
        begin
          abrirLiberacao;
        end;
      end;

    end
    else
    begin
      Application.MessageBox('N�o foi possivel fazer a valida��o do sistema, assinatura inv�lida!', 'Aten��o', MB_ICONERROR);
      abrirLiberacao;
    end;
  end
  else
  begin
    Application.MessageBox('Licen�a n�o encontrada, prossiga com a ativa��o do sistema!', 'Aten��o', MB_ICONINFORMATION);
    abrirLiberacao;
  end;

end;

procedure TfrmLogin.cbEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_DOWN then
      if Not(cbEmpresa.DroppedDown) then
         cbEmpresa.DroppedDown := True;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  frmLogin.Caption:= frmLogin.Caption + ' Vers�o ' + GetFileVersion(ParamStr(0));
  CarregarUsuarios();
end;


procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) and (cbEmpresa.Focused) then
      btnEntrarClick(btnEntrar);
   //
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
var
   qrEmpresa: TUniQuery;
begin
   qrEmpresa := TUniQuery.Create(Nil);
   with qrEmpresa, SQl do
   begin
      Connection := frmMenu.Conexao;
      Add(' SELECT EMP.EMP_001, ');
      Add('        EMP.EMP_002,  ');
      Add('        EMP.EMP_003  ');
      Add(' FROM EMPRESAS EMP ');
      Open;
   end;

   cbEmpresa.Clear;
   cbEmpresa.AddItem('SELECIONE...', nil);

   if qrEmpresa.RecordCount > 0 then
   begin
      while not qrEmpresa.Eof do
      begin
         lstEMP := TEmpresa.Create;
         lstEMP.iEMP := qrEmpresa.FieldByName('EMP_001').AsInteger;
         lstEMP.sEMP := qrEmpresa.FieldByName('EMP_002').AsString;
         cbEmpresa.AddItem(qrEmpresa.FieldByName('EMP_002').AsString, lstEMP);
         qrEmpresa.Next;
      end;
      //se tiver uma empresa s�, n�o exibe o combo de empresa
      if qrEmpresa.RecordCount=1 then
      begin
        cbEmpresa.ItemIndex:=1;
        lbEmpresa.Visible:=false;
        cbEmpresa.Visible:=false;
      end
      else
      begin
        cbEmpresa.ItemIndex:=0;
        lbEmpresa.Visible:=true;
        cbEmpresa.Visible:=true;
      end;

   end
   else
      cbEmpresa.ItemIndex:=0;

  //carrega os usuarios para o componente de autocompletar
  JvAutoComplete.Strings.Clear;
  ExecutaConsultaSQL(qrEmpresa, 'select usu_003 from usuarios where sit_001=4');
  while not qrEmpresa.eof do
  begin
    JvAutoComplete.Strings.Add(qrEmpresa.Fields[0].asstring);
    qrEmpresa.next;
  end;

  FreeAndNil(qrEmpresa);
 // VerificarLiberacao;
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
   self.ModalResult := mrClose;
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
var
   qrSenha: TUniQuery;
begin
  if Trim(cboUsuario.Text) = '' then
  begin
    Application.MessageBox(PChar('Favor informar o Usu�rio.'), PChar('Aten��o'), MB_OK);
    cboUsuario.SetFocus;
    Abort;
  end;
  if edSenha.Text = '' then
  begin
    Application.MessageBox(PChar('Favor informar a Senha.'), PChar('Aten��o'), MB_OK);
    edSenha.SetFocus;
    Abort;
  end;
  if (cbEmpresa.ItemIndex = 0) and (cboUsuario.Text <> 'ADMIN') then
  begin
    Application.MessageBox(PChar('Favor selecionar a Empresa.'), PChar('Aten��o'), MB_OK);
    cbEmpresa.SetFocus;
    Abort;
  end;
  //
  if not(Valida_Usuario(Trim(cboUsuario.Text), edSenha.Text)) then
  begin
    Application.MessageBox('Usu�rio n�o permitido.', 'Aten��o', 0 + 64);
    cboUsuario.SetFocus;
    Abort;
  end;
  //
  if (RecProj.bVersaoAvaliacao) and (Date > StrToDate('14/10/2013')) then
  begin
    Application.MessageBox('A vers�o de avalia��o terminou, entre em contato com a RP Sistemas!', 'Aten��o', 0 + 64);
    Application.Terminate;
  end;
  //
  if edSenha.Text = '' then
  begin
    Application.CreateForm(TfrmNovaSenha, frmNovaSenha);
    if frmNovaSenha.ShowModal = mrOk then
    begin
       qrSenha := TUniQuery.Create(Nil);
       with qrSenha, SQl do
       begin
          Connection := frmMenu.Conexao;
          Add(' UPDATE USUARIOS SET USU_004 = :SENHA WHERE USU_001 = :USU ');
          ParamByName('SENHA').AsString := frmNovaSenha.edNovaSenha.Text;
          ParamByName('USU').AsInteger := RecProj.iUsuario;
          ExecSQL;
          FreeAndNil(qrSenha);
          Application.MessageBox('Favor tente entrar no Sistema com sua Nova Senha.', 'Aten��o', 0 + 64);
          edSenha.SetFocus;
       end;
    end
    else
       Application.MessageBox('� necess�rio informar uma senha para entrar no Sistema.', 'Aten��o', 0 + 64);
    //
    FreeAndNil(frmNovaSenha);
    Abort;
  end;
  //
  if (cbEmpresa.ItemIndex > 0) then
  begin
    RecProj.iEMP := TEmpresa(cbEmpresa.Items.Objects[cbEmpresa.ItemIndex]).iEMP;
    RecProj.sEMP := TEmpresa(cbEmpresa.Items.Objects[cbEmpresa.ItemIndex]).sEMP;
  end;
  ModalResult := mrOk;
end;

procedure TfrmLogin.CarregarUsuarios;
var oQry:TUniQuery;
begin
  oQry:= TUniQuery.Create(nil);
  try
      oQry.Connection:= frmMenu.Conexao;
      oQry.Close;
      oQry.SQL.Text:= 'SELECT USU_003 FROM USUARIOS';
      oQry.Open;
      cboUsuario.Clear;
      oQry.Prior;
      while not oQry.Eof do
      begin
         cboUsuario.Items.Add(oQry.FieldByName('USU_003').AsString);
         oQry.Next;
      end;
  finally
    oQry.Free;
  end;
end;

end.
