SELECT
	u.name AS usuario,
    COUNT(his.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(son.time_song) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.song AS son
INNER JOIN SpotifyClone.history AS his
ON u.user_id = his.user_id AND son.song_id = his.song_id
GROUP BY u.user_id
ORDER BY u.name;