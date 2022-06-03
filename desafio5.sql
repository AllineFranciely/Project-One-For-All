SELECT
	son.name AS cancao,
    COUNT(his.user_id) As reproducoes
FROM SpotifyClone.song AS son
INNER JOIN SpotifyClone.history AS his
ON son.song_id = his.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;