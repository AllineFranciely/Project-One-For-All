SELECT 
	COUNT(can.song_id) AS cancoes,
    COUNT(DISTINCT art.artist_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.song AS can
INNER JOIN SpotifyClone.album AS alb
ON can.album_id = alb.album_id
INNER JOIN SpotifyClone.artist AS art
ON alb.artist_id = art.artist_id;