#Cálculo de idade a partir da data de nascimento
SELECT nome, 
date_format(dataNascimento,"%d/%m/%Y") AS nascimento,
(YEAR(CURDATE()) - YEAR(dataNascimento)) - # - comparar data se já passou
(RIGHT(CURDATE(),5) < RIGHT (dataNascimento,5)) AS idade
FROM cliente;
