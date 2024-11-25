--1
SELECT
	Nome,
	Ano
FROM Filmes
--2


--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
order by Ano ASC
--4


--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para O Futuro';
--6


--7
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;
--8


--9
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000;
--0


--9
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
--0


--8
SELECT Ano, COUNT(*) AS quantidade_de_filmes
FROM Filmes
GROUP BY Ano
ORDER BY quantidade_de_filmes DESC;
--7


--5
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';
--6


--3
SELECT 
	Id,
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
--4


--1
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;
--2


--33
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
--11


--44
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON e.IdAtor = a.Id;
--22
