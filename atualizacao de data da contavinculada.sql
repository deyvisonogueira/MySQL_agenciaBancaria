#Atualizar a data de abertura da conta com cod 1 para 20 de março
SELECT * FROM contasvinculadas; #Relatório
UPDATE contasvinculadas SET dataAbertura = "2022-03-20"
WHERE conta_idConta = 1;
SELECT * FROM contasvinculadas; #Pós Relatório