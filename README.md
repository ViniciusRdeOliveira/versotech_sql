Teste Técnico de Conhecimentos em SQL
Bem-vindo ao teste técnico de conhecimentos em SQL!
A seguir, você encontrará cinco desafios onde será necessário escrever consultas SQL. Utilize apenas as tabelas e dados presentes no arquivo schema.sql fornecido.

📌 Instruções
Desafios: Resolva cada um dos desafios propostos escrevendo as queries SQL apropriadas.

Retorno Esperado: Certifique-se de que as consultas retornem os resultados esperados, incluindo os nomes das colunas especificadas.

Validação: Após finalizar todas as consultas, valide suas respostas no compilador online PostgreSQL SQL Fiddle.

Entrega: Submeta suas consultas finais em um repositório próprio seu no GitHub.

💡 Desafios
1. Consulta de Vendedores
Escreva uma query para listar todos os vendedores ativos, mostrando as colunas id, nome, salario.
Ordene o resultado pelo nome em ordem ascendente.

Retorno esperado:

id	nome	salario
2	Vendedor B	4000.00
4	Vendedor D	3800.00
1	Vendedor Z	3000.00

2. Funcionários com Salário Acima da Média
Liste os funcionários cujo salário seja acima da média salarial de todos os funcionários.
A consulta deve mostrar as colunas id, nome, salario, ordenadas pelo salário em ordem decrescente.

Retorno esperado:

id	nome	salario
5	Vendedor E	4200.00
2	Vendedor B	4000.00
4	Vendedor D	3800.00

3. Resumo por Cliente
Liste todos os clientes e o valor total de pedidos transmitidos.
Retorne as colunas id, razao_social, total, ordenadas pelo total em ordem decrescente.

Retorno esperado:

id	razao_social	total
4	Cliente D	530
3	Cliente C	430
2	Cliente B	350
1	Cliente A	250
5	Cliente E	0

4. Situação por Pedido
Escreva uma query que retorne a situação atual de cada pedido da base.
A consulta deve retornar as colunas id, valor, data, situacao, com a seguinte lógica:

Se possui data de cancelamento preenchida: CANCELADO

Se possui data de faturamento preenchida: FATURADO

Caso contrário: PENDENTE

Retorno esperado:

id	valor	data	situacao
1	120.00	2023-07-06	PENDENTE
2	130.00	2023-07-07	PENDENTE
3	170.00	2023-07-08	FATURADO
4	180.00	2023-07-09	CANCELADO
5	210.00	2023-07-10	PENDENTE
6	220.00	2023-07-11	FATURADO
7	260.00	2023-07-12	CANCELADO
8	270.00	2023-07-13	FATURADO

5. Produtos Mais Vendidos
Escreva uma query que retorne o produto mais vendido (em quantidade), incluindo:

id_produto

quantidade_vendida

total_vendido

pedidos (quantidade de pedidos em que ele apareceu)

clientes (quantidade de clientes distintos que compraram esse produto)

Em caso de empate em quantidade, use o total vendido como critério de desempate.

Retorno esperado:

id_produto	quantidade_vendida	total_vendido	pedidos	clientes
2	12	220	3	2

✅ Requisitos
Utilize apenas as tabelas e dados presentes no arquivo schema.sql.

Certifique-se de que os nomes das colunas estejam exatamente iguais aos especificados nos desafios.

Valide suas queries no compilador online SQL Fiddle.

Boa sorte! 🚀