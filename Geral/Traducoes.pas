unit Traducoes;

interface

uses cxTextEdit,
  cxedit, cxClasses, cxGridPopupMenuConsts,
  cxCalendar, cxGridStrs, cxGridPopupMenu, cxFilterControl,
  cxFilterConsts, cxFilterControlStrs, cxEditConsts, Messages, Variants, Graphics,
  Controls, cxShellBrowserDialog, cxGraphics, cxControls, ExtCtrls, AppEvnts;

// TRADUZ COMPONENTES DA QUANTAM GRID -> ATUALIZADO EM 26/05
Procedure TraduzCompQuantuam;

implementation

Procedure TraduzCompQuantuam;
begin
  /// /  Trazucoes referentes a Grid grid
  ///
  {cxSetResourceString(@scxGridGroupByBoxCaption,
    'Arraste a coluna para este local e agrupe por esta coluna');
  cxSetResourceString(@cxSGridCountMenuItem, 'Quantidade');
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Personalizar');
  cxSetResourceString(@scxGridNoDataInfoText, '< Nenhum Registro Encontrado >');
  cxSetResourceString(@scxGridFilterIsEmpty, '< Nenhum filtro utilizado >');
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption, '(N�o � em Branco)');
  cxSetResourceString(@cxSFilterOperatorEqual, 'Igual');
  cxSetResourceString(@cxSFilterOperatorNotEqual, 'Diferente');
  cxSetResourceString(@cxSFilterOperatorLess, 'Menor que');
  cxSetResourceString(@cxSFilterOperatorLessEqual, 'Menor ou Igual a');
  cxSetResourceString(@cxSFilterOperatorGreater, 'Maior que');
  cxSetResourceString(@cxSFilterOperatorGreaterEqual, 'Maior ou Igual a');
  cxSetResourceString(@cxSFilterOperatorLike, 'Que Contem');
  cxSetResourceString(@cxSFilterOperatorNotLike, 'Que n�o Contem');
  cxSetResourceString(@cxSFilterOperatorBetween, 'Entre');
  cxSetResourceString(@cxSFilterOperatorNotBetween, 'N�o Entre');
  cxSetResourceString(@cxSFilterOperatorInList, 'Pertence');
  cxSetResourceString(@cxSFilterOperatorNotInList, 'N�o Pertence');
  cxSetResourceString(@cxSFilterAndCaption, 'E');
  cxSetResourceString(@cxSFilterOrCaption, 'Ou');
  cxSetResourceString(@cxSFilterNotCaption, 'N�o');
  cxSetResourceString(@cxSFilterBlankCaption, 'Em Branco');
  cxSetResourceString(@cxSFilterOperatorIsNull, '� em branco');
  cxSetResourceString(@cxSFilterOperatorIsNotNull, 'N�o � em branco');
  cxSetResourceString(@cxSFilterBoxAllCaption, 'Todos');
  cxSetResourceString(@cxSFilterBoxCustomCaption, 'Personalizar...');
  cxSetResourceString(@cxSFilterBoxBlanksCaption, 'Em Branco');
  cxSetResourceString(@cxSFilterBoolOperatorAnd, 'E');
  cxSetResourceString(@cxSFilterBoolOperatorOr, 'Ou');
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'N�o E');
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'N�o Ou');
  cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtro');
  cxSetResourceString(@cxSFilterAddCondition, 'Adicionar &Condi��es');
  cxSetResourceString(@cxSFilterAddGroup, 'Adicionar &Grupos');
  cxSetResourceString(@cxSFilterRemoveRow, '&Remover Colunas');
  cxSetResourceString(@cxSFilterClearAll, 'Limpar &Tudo');
  cxSetResourceString(@cxSFilterFooterAddCondition,
    'Pressione o bot�o para adicionar uma condi��o');
  cxSetResourceString(@cxSFilterGroupCaption, 'Amplie as suas condi��es');
  cxSetResourceString(@cxSFilterRootGroupCaption, '<Principal>');
  cxSetResourceString(@cxSFilterControlNullString, '<Vazio>');
  cxSetResourceString(@cxSFilterDialogCaption, 'Personalizar Filtro');
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Valor Inv�lido');
  cxSetResourceString(@cxSFilterDialogSingleCharacter, 'que representa o s�mbolo de letras');
  cxSetResourceString(@cxSFilterDialogCharactersSeries, 'que representa uma s�rie de letras');
  cxSetResourceString(@cxSFilterDialogOperationAnd, 'E');
  cxSetResourceString(@cxSFilterDialogOperationOr, 'Ou');
  cxSetResourceString(@cxSFilterDialogRows, 'Mostra a coluna de:');
  cxSetResourceString(@cxSFilterControlDialogCaption, 'Filtro');
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'titulo.flt');
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Abre um filtro existente');
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption, 'Salva filtro em um arquivo');
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption, 'Salvar &Como...');
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&Abrir...');
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, 'A&plicar');
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'OK');
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Cancelar');
  cxSetResourceString(@cxSFilterControlDialogFileFilter, 'Filtro (*.flt)|*.flt');
  cxSetResourceString(@scxGridBandsQuickCustomizationHint, 'Clique aqui para Mostrar/Ocultar/Mover Bandas');
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint, 'Clique aqui para Mostrar/Ocultar/Mover Colunas');
  cxSetResourceString(@cxSFilterOperatorLastMonth, '�ltimo M�s');
  cxSetResourceString(@cxSFilterOperatorLastWeek, '�ltima Semana');
  cxSetResourceString(@cxSFilterOperatorLastYear, '�ltimo Ano');
  cxSetResourceString(@cxSFilterOperatorNextMonth, 'Pr�ximo M�s');
  cxSetResourceString(@cxSFilterOperatorNextWeek, 'Pr�xima Semana');
  cxSetResourceString(@cxSFilterOperatorNextYear, 'Pr�ximo Ano');
  cxSetResourceString(@cxSFilterOperatorThisMonth, 'Este M�s');
  cxSetResourceString(@cxSFilterOperatorThisWeek, 'Esta Semana');
  cxSetResourceString(@cxSFilterOperatorThisYear, 'Este Ano');
  cxSetResourceString(@cxSFilterOperatorToday, 'Hoje');
  cxSetResourceString(@cxSFilterOperatorTomorrow, 'Amanh�');
  cxSetResourceString(@cxSFilterOperatorYesterday, 'Ontem');
  cxSetResourceString(@cxSDatePopupClear, 'Limpar');
  cxSetResourceString(@cxsDatePopupToday, 'Hoje');
  cxSetResourceString(@cxSBlobButtonClose, 'Fechar');
  cxSetResourceString(@cxSDatePopupNow, 'Atual');
  cxSetResourceString(@cxSMenuItemCaptionCut, 'Recortar');
  cxSetResourceString(@cxSMenuItemCaptionCopy, 'Copiar');
  cxSetResourceString(@cxSMenuItemCaptionPaste, 'Colar');
  cxSetResourceString(@cxSMenuItemCaptionDelete, 'Limpar');
  cxSetResourceString(@cxSMenuItemCaptionLoad, 'Abrir');
  cxSetResourceString(@cxSMenuItemCaptionSave, 'Salvar');   }
end;

end.
