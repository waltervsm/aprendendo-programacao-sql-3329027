-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId AS Cliente_ID,
FirstName as Nome,
LastName AS Sobrenome,
Address as endereco

FROM customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId AS Cliente_ID,
FirstName as Nome,
UPPER (LastName) AS Sobrenome,
Address as endereco

FROM customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId AS Cliente_ID,
LOWER (FirstName) as Nome,
LastName AS Sobrenome,
Address as endereco

FROM customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId AS Cliente_ID,
FirstName as Nome,
LastName AS Sobrenome,
Address as endereco,
FirstName || ' ' || LastName AS Nome_completo

FROM customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId AS Cliente_ID,
FirstName as Nome,
LastName AS Sobrenome,
FirstName || ' ' || LastName AS Nome_completo,
REPLACE (Address, 'Av.', 'Avenida') AS endereco

FROM customers
WHERE
Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerId AS Cliente_ID,
FirstName as Nome,
LastName AS Sobrenome,
FirstName || ' ' || LastName AS Nome_completo,
REPLACE (Address, 'Av.', 'Avenida') AS endereco

FROM customers
WHERE
Country LIKE 'Bra%';