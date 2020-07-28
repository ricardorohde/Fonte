unit uInutilizacaoNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmModelo, Vcl.ExtCtrls, AdvPanel,
  AdvGlowButton, Vcl.StdCtrls, UNI;

type
  TfrmInutilizacaoNFCe = class(TfrmModelo)
    Label1: TLabel;
    edAno: TEdit;
    Label2: TLabel;
    edModelo: TEdit;
    Label3: TLabel;
    edSerie: TEdit;
    Label4: TLabel;
    edNroInicial: TEdit;
    Label5: TLabel;
    edNroFinal: TEdit;
    Label6: TLabel;
    edJustificativa: TEdit;
    btCancela: TAdvGlowButton;
    btConfirma: TAdvGlowButton;
    constructor Create(sender :Tcomponent; tipo_nota : string ='NFCE') ; Reintroduce;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInutilizacaoNFCe: TfrmInutilizacaoNFCe;

implementation

{$R *.dfm}

uses uMenu, Funcao_DB, uFuncoes, uGeradorNFCe;

procedure TfrmInutilizacaoNFCe.btCancelaClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TfrmInutilizacaoNFCe.btConfirmaClick(Sender: TObject);
var FGerarNFCe : GerarNFCe;
begin
  inherited;
  //valida os dados antes de chamar a inutiliza��o
  if empty(edano.text) then
  begin
    Application.messagebox('Preencha o ano!', 'Aten��o', mb_iconinformation) ;
    edano.setfocus;
    abort;
  end;
  if empty(edModelo.text) then
  begin
    Application.messagebox('Preencha o modelo!', 'Aten��o', mb_iconinformation) ;
    edModelo.setfocus;
    abort;
  end;
  if empty(edSerie.text) then
  begin
    Application.messagebox('Preencha a s�rie!', 'Aten��o', mb_iconinformation) ;
    edSerie.setfocus;
    abort;
  end;
     if empty(edNroInicial.text) then
  begin
    Application.messagebox('Preencha o n�mero inicial!', 'Aten��o', mb_iconinformation) ;
    edNroInicial.setfocus;
    abort;
  end;
  if empty(edNroFinal.text) then
  begin
    Application.messagebox('Preencha o n�mero final!', 'Aten��o', mb_iconinformation) ;
    edNroFinal.setfocus;
    abort;
  end;

  if strtoint(edNroFinal.text)<strtoint(edNroInicial.text) then
  begin
    Application.messagebox('O n�mero final n�o pode ser menor que o n�emro inicial!', 'Aten��o', mb_iconinformation) ;
    edNroFinal.setfocus;
    abort;
  end;
  if length(trim(edJustificativa.text))<15 then
  begin
    Application.messagebox('A justificativa deve ter ao menos 15 caracteres!', 'Aten��o', mb_iconinformation) ;
    edJustificativa.setfocus;
    abort;
  end;

  //tudo ok, lan�a a inutiliza��o
  try
    FGerarNFCe := GerarNFCe.Create;
    if FGerarNFCe.Inutilizar(edJustificativa.text, strtoint(edAno.Text),
                             strtoint(edModelo.Text), strtoint(edSerie.Text),
                             strtoint(edNroInicial.Text), strtoint(edNroFinal.Text)) then
    begin
      Application.MessageBox(pchar('Inutiliza��o efetuada com sucesso!'), 'Aten��o', mb_iconinformation);
      self.Close;
    end
    else
      Application.MessageBox(pchar( 'Erro ao inutilizar! C�digo erro NFe: '+ IntToStr(FGerarNFCe.codigoRet) + #13#10 + FGerarNFCe.mensagem), 'Aten��o', MB_ICONWARNING);
    FGerarNFCe.Free;

  except
    on E : Exception do
    begin
      Application.MessageBox(pchar('Erro ao inutilizar NFe! Detalhes do erro:'+#13#10+E.Message),'Aten��o', mb_iconerror );
    end;
  end;


end;

Constructor TfrmInutilizacaoNFCe.Create(sender :Tcomponent ; tipo_nota : string ='NFCE') ;
var qr_aux : Tuniquery;
begin
  inherited Create(Sender);

  qr_aux := CriaUniQuery(self, frmmenu.conexao);
  ExecutaConsultaSQL(qr_aux, format('select serie_nfce, serie_nfe from empresas where emp_001=%d', [recproj.iemp]));

  if tipo_nota='NFCE' then
  begin
    edserie.text := qr_aux.FieldByName('serie_nfce').AsString;
    edmodelo.Text := '65';
  end
  else
  begin
    edserie.text := qr_aux.FieldByName('serie_nfe').AsString;
    edmodelo.Text := '55';
  end;

  edano.Text := FormatDateTime('yyyy', Date);

end;

end.
