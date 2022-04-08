#Calcular a soma monetária da Agência Financeira
SELECT format(sum(saldo),2) AS "Soma dos Saldos" FROM conta;
