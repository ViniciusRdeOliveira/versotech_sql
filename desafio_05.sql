-- Produtos mais vendidos: 
-- Escreva uma query que retorne o produto mais vendido ( em quantidade ), incluindo o 
--valor total vendido deste produto, quantidade de pedidos em que ele apareceu e para quantos clientes 
--diferentes ele foi vendido. 
-- A consulta deve retornar as colunas id_produto, quantidade_vendida, total_vendido, clientes, pedidos. 
-- Caso haja empate em quantidade de vendas, utilizar o total vendido como critério de desempate.

SELECT 
  itens_pedido.id_produto,
  SUM(itens_pedido.quantidade) AS quantidade_vendida,
  SUM(itens_pedido.quantidade * itens_pedido.preco_praticado) AS total_vendido,
  COUNT(DISTINCT pedido.id_cliente) AS clientes,
  COUNT(DISTINCT itens_pedido.id_pedido) AS pedidos
FROM itens_pedido
JOIN pedido ON itens_pedido.id_pedido = pedido.id_pedido
GROUP BY itens_pedido.id_produto
ORDER BY quantidade_vendida DESC, total_vendido DESC
LIMIT 1;