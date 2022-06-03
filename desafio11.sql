SELECT
	son.name AS nome_musica,
CASE
	WHEN son.name LIKE '%Streets' THEN REPLACE(son.name, 'Streets', 'CodeReview')
    WHEN son.name LIKE '%Her Own' THEN REPLACE(son.name, 'Her Own', 'Trybe')
    WHEN son.name LIKE '%Inner Fire' THEN REPLACE(son.name, 'Inner Fire', 'Project')
    WHEN son.name LIKE '%Silly' THEN REPLACE(son.name, 'Silly', 'Nice')
    WHEN son.name LIKE '%Circus' THEN REPLACE(son.name, 'Circus', 'Pull Request')
END AS novo_nome
FROM song AS son
HAVING novo_nome IS NOT NULL
ORDER BY son.name ASC;