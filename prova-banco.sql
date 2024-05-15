INSERT INTO Livros (titulo, autor,
ano_publicacao, disponibilidade,
categoria, isbn, editora,
numero_paginas, idioma)
VALUES ('As crônicas de Nárnia',
'C.S. Lewis', 1950, 'Disponível',
'Fantasia', '978-0064471190',
'HarperCollins', 769, 'Francês');

UPDATE Livros 
SET disponibilidade ='TAIST'
WHERE ano_publicacao < 1900;

UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

DELETE FROM Livros 
WHERE idioma = 'Francês' AND
ano_publicacao < 2000;

SELECT*
FROM Livros
WHERE  numero_paginas > 650;

SELECT categoria, COUNT(*)
FROM Livros 
GROUP BY categoria;

SELECT*
FROM Livros
ORDER BY id DESC
LIMIT 5;

SELECT AVG(numero_paginas) AS 
media_paginas
FROM Livros
WHERE disponibilidade =
'Disponível';

SELECT*
FROM Livros
ORDER BY ano_publicacao DESC;

SELECT*
FROM Livros 
WHERE titulo LIKE 'S%' AND
ano_publicacao BETWEEN 1970
AND 1990;
