#Relatório com nome do cliente, saldo, data de abertura da conta e o tipo.

SELECT cli.nome, con.saldo, 
date_format(cv.dataAbertura,"%d/%m/%Y") AS "Data de Abertura", con.tipo 
FROM cliente AS cli INNER JOIN conta AS con
INNER JOIN contasvinculadas AS cv
ON cli.idCLIENTE = cv.ClIENTE_idClIENTE 
AND con.idCONTA = cv.CONTA_idCONTA;




