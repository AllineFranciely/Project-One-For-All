SELECT
	son.name AS 'nome',
    COUNT(his.song_id) AS 'reproducoes'
FROM SpotifyClone.song AS son
INNER JOIN SpotifyClone.history AS his
INNER JOIN SpotifyClone.users AS u
ON son.song_id = his.song_id AND his.user_id = u.user_id
WHERE u.plan_id IN (1,4)
GROUP BY son.name
ORDER BY son.name;