#Subconsulta para mostras as contas vínculadas aos clietes que informaram o telefone no cadastro | Clientes 1 e 2 
SELECT * FROM contasvinculadas AS cv 
WHERE cv.CLIENTE_idCLIENTE IN 
(SELECT idCliente FROM cliente WHERE telefone IS NOT NULL);