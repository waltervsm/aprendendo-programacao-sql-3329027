-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_geral(id, nivel, salario)
VALUES
(1, 1000, 'estagio'),
(2, 1500, 'sales support agent'),
(3, 3000, 'sales manager');
(4, 10000, 'gerente');
(5, 20000, 'CEO');
(6, 12000, 'IT manager');


-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_geral(nivel, salario)
VALUES
(11000, 'IT staff');