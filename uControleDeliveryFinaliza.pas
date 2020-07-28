unit uControleDeliveryFinaliza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxDBEdit, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, AdvGroupBox, MemDS, DBAccess,
  Uni, AdvGlowButton, Vcl.ExtCtrls, AdvPanel, uControleDeliveryFechamento,
  Vcl.Buttons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxCheckBox,uFuncoes;

type
  TfrmControleDeliveryFinaliza = class(TForm)
    AdvPanel1: TAdvPanel;
    pnBotoes: TFlowPanel;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox1: TAdvGroupBox;
    qrVenda: TUniQuery;
    dsVenda: TDataSource;
    qrVendaven_001: TIntegerField;
    qrVendaemp_001: TIntegerField;
    qrVendaid_cliente: TIntegerField;
    qrVendadata_cadastro: TDateTimeField;
    qrVendatipo_venda: TWideStringField;
    qrVendavenda_orcamento: TIntegerField;
    qrVendadesconto: TFloatField;
    qrVendaacrescimo: TFloatField;
    qrVendatotal_venda: TFloatField;
    qrVendadesconto_percent: TFloatField;
    qrVendasit_001: TIntegerField;
    qrVendausu_001_1: TIntegerField;
    qrVendastatus_desc: TWideStringField;
    qrVendaid_caixa_abertura: TIntegerField;
    qrVendaobservacao: TWideStringField;
    qrVendaid_entregador: TIntegerField;
    qrVendadata_saida: TDateTimeField;
    qrVendahora_saida: TDateTimeField;
    qrVendanome_entregador: TWideStringField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    btAlterarForma: TAdvGlowButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    qrVendasubtotal_venda: TFloatField;
    lbTroco: TLabel;
    cbEntregador: TDBLookupComboBox;
    qrEntregador: TUniQuery;
    qrEntregadorid_usuario: TIntegerField;
    qrEntregadornome: TWideStringField;
    dsEntregador: TDataSource;
    Label9: TLabel;
    qrVendadata_entrega: TDateTimeField;
    lbReceber: TLabel;
    qrVendab_taxa_entrega: TBooleanField;
    MemoCupomTEF: TMemo;
    pAguardeTef: TPanel;
    MemoCupomTEF1: TMemo;
    MemoCupomTEF3: TMemo;
    MemoCupomTEF2: TMemo;
    btn1: TBitBtn;
    ckImprimirCupom: TcxCheckBox;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    constructor Create(sender : Tcomponent ; id_venda : integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btAlterarFormaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    id_venda : integer;
  public
    { Public declarations }
  end;

var
  frmControleDeliveryFinaliza: TfrmControleDeliveryFinaliza;

implementation

{$R *.dfm}

uses uMenu ;

constructor TfrmControleDeliveryFinaliza.Create(sender : Tcomponent ; id_venda : integer);
begin
  inherited Create(sender);

  //verifica se existe caixa aberto
  frmMenu.carregaCaixaUsuario;
  if RecProj.iIDCaixa=0 then
  begin
    Application.MessageBox(pchar('N�o existe caixa aberto para o usu�rio '
                         + recproj.sUsuario+'!'), 'Aten��o', MB_ICONINFORMATION);
    abort;
  end;

  if id_venda<=0 then
  begin
    Application.messagebox('N�o foi informada a venda!', 'Aten��o', MB_ICONINFORMATION + mb_ok);
    abort;
  end;

  self.id_venda := id_venda;
  qrEntregador.Open;

  qrVenda.Close;
  qrVenda.ParamByName('id_venda').AsInteger:=id_venda;
  qrVenda.ParamByName('id_empresa').AsInteger:=RecProj.iEmp;
  qrVenda.Open;
  qrVenda.Edit;

  frmControleDeliveryFechamento:= TfrmControleDeliveryFechamento.Create(self, id_venda);

  lbTroco.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('valor_troco').AsFloat]);
  lbReceber.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('total_pago').AsFloat]);
end;

procedure TfrmControleDeliveryFinaliza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qrVenda.State = dsEdit then qrVenda.cancel;

  if Assigned(frmControleDeliveryFechamento) then
    FreeAndNil(frmControleDeliveryFechamento);
end;

procedure TfrmControleDeliveryFinaliza.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then  Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TfrmControleDeliveryFinaliza.FormShow(Sender: TObject);
begin
   ckImprimirCupom.Checked:= LerBooleanConfig('PRE_FECHAMENTODELIVERYCKIMPCUPOM', frmMenu.cdsCFG.FileName);
end;

procedure TfrmControleDeliveryFinaliza.btAlterarFormaClick(Sender: TObject);
begin
  qrVenda.post;
  frmControleDeliveryFechamento.ShowModal;
  lbTroco.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('valor_troco').AsFloat]);
  lbReceber.Caption := format('%m', [frmControleDeliveryFechamento.cdsVenda.FieldByName('total_pago').AsFloat]);
  qrVenda.refresh;
  qrVenda.edit;
end;

procedure TfrmControleDeliveryFinaliza.btCancelaClick(Sender: TObject);
begin
  qrVenda.cancel;
  tag:=0;
  close;
end;

procedure TfrmControleDeliveryFinaliza.btConfirmaClick(Sender: TObject);
var confirma : boolean;
begin
  if qrVenda.FieldByName('id_entregador').isnull and qrVenda.FieldByName('b_taxa_entrega').asboolean  then
  begin
    Application.MessageBox('N�o foi informado o entregador!', 'Aten��o', MB_ICONINFORMATION);
    cbEntregador.SetFocus;
    abort;
  end;

  frmControleDeliveryFechamento.venda_concluida:=true;
  frmControleDeliveryFechamento.id_entregador := qrVenda.FieldByName('id_entregador').asinteger;
  frmControleDeliveryFechamento.nome_entregador := cbEntregador.Text;
  frmControleDeliveryFechamento.ckImprimirCupom.Checked:= ckImprimirCupom.Checked;
  frmControleDeliveryFechamento.bImprimeCupomFechamento:= ckImprimirCupom.Checked;
  frmControleDeliveryFechamento.btConfirma.Click;

  qrVenda.FieldByName('data_entrega').AsDateTime :=  Date + time;
  if qrVenda.FieldByName('data_saida').IsNull then
    qrVenda.FieldByName('data_saida').AsDateTime :=  Date + time;

  qrVenda.Post;
  tag:=1;
  close;

end;

end.
