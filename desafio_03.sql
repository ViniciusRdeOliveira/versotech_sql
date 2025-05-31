-- Resumo por cliente: Escreva uma query para listar todos os clientes e o valor total de pedidos já transmitidos. 
-- A consulta deve retornar as colunas id, razao_social, total, ordenadas pelo total em ordem descendente.

SELECT 
  cliente.id_cliente, 
  cliente.razao_social, 
  COALESCE(SUM(pedido.valor_total), 0) AS valor_total
FROM clientes cliente
LEFT JOIN pedido pedido ON cliente.id_cliente = pedido.id_cliente
GROUP BY cliente.id_cliente, cliente.razao_social
ORDER BY valor_total DESC;