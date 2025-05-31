-- Funcionários com Salário Acima da Média: 
-- Escreva uma query para listar os funcionários que possuem um salário acima da média salarial de todos os funcionários. 
-- A consulta deve mostrar as colunas id, nome, e salário, ordenadas pelo salário em ordem descendente.

SELECT id_vendedor, nome, salario FROM vendedores 
WHERE salario > (SELECT AVG(salario) FROM vendedores)
ORDER by salario DESC;
