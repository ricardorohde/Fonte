unit uFrmModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvPanel;

type
  TfrmModelo = class(TForm)
    pnPrincipal: TAdvPanel;
    pnBotoes: TFlowPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModelo: TfrmModelo;

implementation

{$R *.dfm}

uses uFuncoes, Funcao_DB;

procedure TfrmModelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close();
end;

end.
