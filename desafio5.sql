SELECT
    songs.song_name AS cancao,
    COUNT(history.song_id) AS reproducoes
FROM
    songs
INNER JOIN
    playback_history AS history ON songs.song_id = history.song_id
GROUP BY song_name
ORDER BY reproducoes DESC, cancao
LIMIT 2; 