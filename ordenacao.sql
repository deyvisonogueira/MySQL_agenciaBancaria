/*Emitir um relatório que mostre o identificador do cliente, seu nome, 
o RG, o tipo de conta, o saldo desde que o RG seja de SP*/
SELECT cli.idClIENTE, cli.nome, cli.rg,
con.tipo, con.saldo
FROM cliente AS cli
INNER JOIN conta AS con
INNER JOIN contasvinculadas AS cv
ON cli.idCLIENTE = cv.CLIENTE_idCLIENTE
AND con.idCONTA = cv.CONTA_idCONTA
WHERE cli.rg LIKE "sp%";

/*Com subconsulta*/
SELECT cli.idClIENTE, cli.nome, cli.rg,
con.tipo, con.saldo
FROM cliente AS cli
INNER JOIN conta AS con
INNER JOIN contasvinculadas AS cv
ON cli.idCLIENTE = cv.CLIENTE_idCLIENTE
AND con.idCONTA = cv.CONTA_idCONTA
HAVING cli.idCLIENTE IN
(SELECT idCLIENTE FROM cliente WHERE rg LIKE "SP%");

/*Ordenação de dados- crescente*/
SELECT * FROM conta ORDER BY saldo ASC;
/*Ordenação de dados- decrescente*/
SELECT * FROM conta ORDER BY saldo DESC;

#Agrupamento 
SELECT tipo, FORMAT(SUM(saldo),2) AS 'total'
FROM conta GROUP BY tipo;

