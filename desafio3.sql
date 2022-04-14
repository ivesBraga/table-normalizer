SELECT 
	user.username AS usuario,
    COUNT(history.user_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(song.song_seconds) / 60, 2) AS total_minutos
FROM
	SpotifyClone.user AS user
    INNER JOIN
    SpotifyClone.playback_history AS history ON user.user_id = history.user_id
    INNER JOIN
    SpotifyClone.songs AS song ON song.song_id = history.song_id
GROUP BY username;