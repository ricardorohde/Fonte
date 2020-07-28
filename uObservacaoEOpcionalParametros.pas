unit uObservacaoEOpcionalParametros;

interface

type
//  TObservacaoEOpcionalTipoLancamento = (tooMesaComanda = 0, tooBalcao = 1, tooDelivery);

  TObservacaoEOpcionalParametros = record
    PermiteAlterarValor: Boolean;

    Quantidade,
    Valor: Double;

    IdMaterial,idVenda,idItem,IdEmpresa,
    CodigoImpressora: Int64;

//    Tipo: TObservacaoEOpcionalTipoLancamento;
  end;

implementation

end.
