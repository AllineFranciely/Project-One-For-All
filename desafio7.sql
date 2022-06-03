SELECT 
	art.name AS 'artista',
    alb.name AS 'album',
    COUNT(fol.user_id) AS 'seguidores'
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
INNER JOIN SpotifyClone.follow AS fol
ON art.artist_id = alb.artist_id AND fol.artist_id = art.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;