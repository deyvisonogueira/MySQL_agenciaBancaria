#Sintaxe básica de alteração de dados
#UPDATE tabela SET campo=valor WHERE campo=valor;
#UPDATE tabela SET campo=valor WHERE condicao;

#Atualização de 5% no saldo das contas do tipo Poupança
SELECT * FROM conta;
UPDATE conta SET saldo = saldo * 1.05 WHERE tipo="Poupança";
SELECT * FROM conta;