SELECT u.name AS usuario,
	IF (MAX(YEAR(his.heard)) > 2020, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS his
ON u.user_id = his.user_id
GROUP BY usuario
ORDER BY usuario;