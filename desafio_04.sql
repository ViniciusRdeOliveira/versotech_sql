-- Situação por pedido: 
-- Escreva uma query que retorne a situação atual de cada pedido da base. 
-- A consulta deve retornar as colunas id, valor, data e situacao. A situacao deve obedecer a seguinte regra:
-- Se possui data de cancelamento preenchido: CANCELADO
-- Se possui data de faturamento preenchido: FATURADO
-- Caso não possua data de cancelamento e nem faturamento: PENDENTE

SELECT 
  id_pedido AS id,
  valor_total,
  data_emissao,
  CASE
    WHEN data_cancelamento IS NOT NULL THEN 'CANCELADO'
    WHEN data_faturamento IS NOT NULL THEN 'FATURADO'
    ELSE 'PENDENTE'
  END AS situacao
FROM pedido;