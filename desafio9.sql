SELECT
	COUNT(his.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS his
INNER JOIN SpotifyClone.users AS u
ON u.user_id = his.user_id
WHERE u.name = 'Bill';