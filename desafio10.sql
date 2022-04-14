SELECT
    songs.song_name AS nome,
    COUNT(history.song_id) AS reproducoes
FROM
    SpotifyClone.playback_history as history
INNER JOIN
    SpotifyClone.songs ON history.song_id = songs.song_id
INNER JOIN    
    SpotifyClone.user ON user.user_id = history.user_id
WHERE
    user.plans_id IN (1, 4)
GROUP BY nome; 