unit uObservacaoEOpcionalLancamento;

interface
  uses
    System.SysUtils, System.Generics.Collections, System.Variants,

    UVendaItemObservacaoComplemento, uMenu, Funcao_DB, uObservacaoEOpcionalParametros;

type

  TObservacaoEOpcionalLancamento = class
  private
    FQuantidade,
    FValor: Double;

    FCodigoImpressora,
    FIdMaterial: Integer;

    FObservacoes: String;

    FOpcionais: TList<Int64>;
    FIdItem: integer;
    FIdVenda: integer;
    FIdEmpresa: Integer;

    procedure Pegar_Observacoes(ATela: TfrmVendaItemObservacaoComplemento);
    procedure Pegar_Opcionais(ATela: TfrmVendaItemObservacaoComplemento);

  public
    constructor Create();

    destructor destroy; override;

    procedure Chamar_Tela_Observacao_Opcional(AParams: TObservacaoEOpcionalParametros);
    procedure Inserir_Opcionais(AIdVenda, AIdVendaItem: Int64);

    property CodigoImpressora: Integer read FCodigoImpressora;
    property IdMaterial: Integer read FIdMaterial;
    property IdVenda: integer read FIdVenda;
    property IdItem: integer read FIdItem;
    property IdEmpresa: Integer read FIdEmpresa;
    property Opcionais: TList<Int64> read FOpcionais;
    property Observacoes: String read FObservacoes;
    property Quantidade: Double read FQuantidade;
    property Valor: Double read FValor;

  end;


implementation

{ TObservacaoEOpcionalLancamento }

procedure TObservacaoEOpcionalLancamento.Chamar_Tela_Observacao_Opcional(AParams: TObservacaoEOpcionalParametros);
var
  Tela: TfrmVendaItemObservacaoComplemento;

begin
  Tela := TfrmVendaItemObservacaoComplemento.Create(nil, AParams);
  Tela.ShowModal();
  Pegar_Opcionais(Tela);
  Pegar_Observacoes(Tela);

  FQuantidade       := StrToFloat(Tela.edQuantidade.Text);
  FValor            := StrToFloat(Tela.edtValor.Text);
  FCodigoImpressora := Tela.cbbImpressora.ItemIndex;

  FreeAndNil(Tela);
end;

constructor TObservacaoEOpcionalLancamento.Create;
begin
  FValor            := 0;
  FCodigoImpressora := 0;
  FQuantidade       := 0;
  FObservacoes      := '';
  FIdMaterial       := -1;
  FIdItem           := -1;
  FIdVenda          := -1;
  FIdEmpresa        := -1;
  FOpcionais        := TList<Int64>.Create();
end;

destructor TObservacaoEOpcionalLancamento.destroy;
begin
  FOpcionais.Free();
  inherited;
end;

procedure TObservacaoEOpcionalLancamento.Inserir_Opcionais(AIdVenda, AIdVendaItem: Int64);
var
  I: Integer;

  Comando: string;

begin
  Comando := format('delete from vendaitemopcional where id_venda=%d and id_empresa=%d and id_vendaitem=%d',
                     [AIdVenda, recProj.iEmp, AIdVendaItem]);

  ExecutaComandoSQL(Comando);

  //remove a tabela master para poder inserir todos os itens
  for I := 0 to FOpcionais.Count -1 do
  begin
    Comando := ' insert into vendaitemopcional (id_venda, id_empresa, id_vendaitem, id_opcional, qtde) '+
               ' values (:id_venda, :id_empresa, :id_vendaietem, :id_opcional, :qtde)';

    ExecutaComandoSQL(Comando, vararrayof([AIdVenda, RecProj.iEmp, AIdVendaItem, FOpcionais[I], 1]));
  end;
end;

procedure TObservacaoEOpcionalLancamento.Pegar_Observacoes(
  ATela: TfrmVendaItemObservacaoComplemento);
var
  I: Integer;

begin
  for I := 0 to ATela.chklstObservacoes.Items.Count -1 do
    if ATela.chklstObservacoes.Checked[I] then
      FObservacoes := FObservacoes + Trim(ATela.chklstObservacoes.Items[I]) + ',';

  if Length(Trim(FObservacoes)) > 0  then
  begin
    FObservacoes := Copy(FObservacoes, 1, 200);
    FObservacoes := Copy(FObservacoes, 1, Length(FObservacoes) -1);
  end;
end;

procedure TObservacaoEOpcionalLancamento.Pegar_Opcionais(ATela: TfrmVendaItemObservacaoComplemento);
var
  I: Integer;

begin
  for I := 0 to ATela.chklstOpcionais.Items.Count -1 do
    if ATela.chklstOpcionais.Checked[I] then
      FOpcionais.Add(Int64(ATela.chklstOpcionais.Items.Objects[I]));
end;

end.
