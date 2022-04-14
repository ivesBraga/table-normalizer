SELECT
    artists.artist_name AS artista,
    album.album_name AS album,
    COUNT(following.artist_id) as seguidores
FROM
    SpotifyClone.artists
INNER JOIN
    album ON artists.artist_id = album.artist_id
INNER JOIN
    following_artists AS following ON artists.artist_id = following.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album; 