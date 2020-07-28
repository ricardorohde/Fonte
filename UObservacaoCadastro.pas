unit UObservacaoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni, uMenu, AdvGlowButton, Vcl.StdCtrls, System.StrUtils, uFrmModelo;

type
  TfrmObservacaoCadastro = class(TfrmModelo)
    gridObservacoesDBTableView1: TcxGridDBTableView;
    gridObservacoesLevel1: TcxGridLevel;
    gridObservacoes: TcxGrid;
    cxGrid1DBTableViewDescricao: TcxGridDBColumn;
    qryObservacao: TUniQuery;
    dsObservacao: TDataSource;
    btnNovo: TAdvGlowButton;
    btnExcluir: TAdvGlowButton;
    btnSalvar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    edtDescricao: TEdit;
    Label1: TLabel;
    qryComando: TUniQuery;

    constructor create(ASender: TComponent; AIdMaterial: Int64);
    procedure FormShow(Sender: TObject);
    procedure qryObservacaoAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FIdCategoria: Int64;

    function Tem_Observacao(): Boolean;

    procedure Atualizar_Grid();
    procedure Definir_Comando(AComando: String);
    procedure Pegar_Id_Categoria(AIdMaterial: Int64);

  public
    { Public declarations }
  end;

var
  frmObservacaoCadastro: TfrmObservacaoCadastro;

implementation

{$R *.dfm}

{ TfrmObservacaoCadastro }

procedure TfrmObservacaoCadastro.Atualizar_Grid;
begin
  qryObservacao.Close();
  qryObservacao.Open();

  btnExcluir.Enabled := Tem_Observacao();
end;

procedure TfrmObservacaoCadastro.btnCancelarClick(Sender: TObject);
begin
  TAdvGlowButton(Sender).Enabled := False;
  btnNovo.Enabled                := not TAdvGlowButton(Sender).Enabled;
  btnExcluir.Enabled             := Tem_Observacao();
  btnSalvar.Enabled              := TAdvGlowButton(Sender).Enabled;
  edtDescricao.ReadOnly          := not TAdvGlowButton(Sender).Enabled;
  edtDescricao.Clear();
  qryObservacao.First();
end;

procedure TfrmObservacaoCadastro.btnExcluirClick(Sender: TObject);
var
  Comando: String;

begin
  if not Tem_Observacao() then
    Exit();

  Comando := Format(
    'DELETE                  '#13#10 +
    '  FROM OBSERVACAO       '#13#10 +
    ' WHERE DESCRICAO = %s   '#13#10 +
    '   AND ID_CATEGORIA = %d', [QuotedStr(edtDescricao.Text), FIdCategoria]);

  if Application.MessageBox(PChar(Format('Deseja realmente excluir a observação %s?',
    [edtDescricao.Text])), 'Confirme', MB_YESNO) = ID_YES then
  begin
     Definir_Comando(Comando);
     qryComando.Execute();

     Atualizar_Grid();
  end;
end;

procedure TfrmObservacaoCadastro.btnNovoClick(Sender: TObject);
begin
  TAdvGlowButton(Sender).Enabled := False;
  btnSalvar.Enabled              := not TAdvGlowButton(Sender).Enabled;
  btnCancelar.Enabled            := not TAdvGlowButton(Sender).Enabled;
  btnExcluir.Enabled             := TAdvGlowButton(Sender).Enabled;
  edtDescricao.ReadOnly          := TAdvGlowButton(Sender).Enabled;
  edtDescricao.Clear();
  edtDescricao.SetFocus();
end;

procedure TfrmObservacaoCadastro.btnSalvarClick(Sender: TObject);
var
  Comando: string;

begin
  if Trim(edtDescricao.Text) = '' then
    MessageDlg('Informe a descrição da observação.', mtWarning, [mbOK], 0)
  else
  begin
    Comando := Format(
      'INSERT INTO OBSERVACAO  '#13#10 +
      '     VALUES (%d, %s, %d)', [FIdCategoria, QuotedStr(edtDescricao.Text), RecProj.iUsuario]);

    Definir_Comando(Comando);
    try
      qryComando.Execute();

      TAdvGlowButton(Sender).Enabled := False;
      btnNovo.Enabled       := not TAdvGlowButton(Sender).Enabled;
      btnCancelar.Enabled   := TAdvGlowButton(Sender).Enabled;
      edtDescricao.ReadOnly := not TAdvGlowButton(Sender).Enabled;
      edtDescricao.Clear();

      Atualizar_Grid();
    except on E: EUniError do
      MessageDlg('Erro ao registrar o observação: '#13#10 +
       Format('%s', [IfThen(E.IsKeyViolation, 'Observação já cadastrada!', E.Message)]), mtError, [mbOK], 0);
    end;
  end;
  edtDescricao.SetFocus();
end;

constructor TfrmObservacaoCadastro.create(ASender: TComponent;
  AIdMaterial: Int64);
begin
  inherited create(ASender);

  Pegar_Id_Categoria(AIdMaterial);

  qryObservacao.Close();
  qryObservacao.ParamByName('id').AsLargeInt := FIdCategoria;
  qryObservacao.Open();
end;

procedure TfrmObservacaoCadastro.Definir_Comando(AComando: String);
begin
  qryComando.Close();
  qryComando.SQL.Clear();
  qryComando.SQL.Add(AComando);
end;

procedure TfrmObservacaoCadastro.FormShow(Sender: TObject);
begin
  edtDescricao.Clear();
  qryObservacao.First();
  edtDescricao.ReadOnly := True;
  btnSalvar.Enabled     := False;
  btnCancelar.Enabled   := False;
  btnExcluir.Enabled    := Tem_Observacao();
end;

procedure TfrmObservacaoCadastro.Pegar_Id_Categoria(AIdMaterial: Int64);
var
  Sql: String;

begin
  Sql :=
    'Select cat_001                                  '#13#10 +
		'	 From categoria                                '#13#10 +
		'	Where cat_001 = (Select cat_001                '#13#10 +
		'	                   From materiais              '#13#10 +
		'	                  Where mat_001 = :id_material)';

  Definir_Comando(Sql);
  qryComando.ParamByName('id_material').AsLargeInt := AIdMaterial;
  qryComando.Open();
  qryComando.First();

  FIdCategoria := qryComando.FieldByName('cat_001').AsLargeInt;
end;

procedure TfrmObservacaoCadastro.qryObservacaoAfterScroll(DataSet: TDataSet);
begin
  edtDescricao.Text := DataSet.FieldByName('descricao').AsString;
end;

function TfrmObservacaoCadastro.Tem_Observacao: Boolean;
begin
  Result := qryObservacao.RecordCount > 0;
end;

end.
