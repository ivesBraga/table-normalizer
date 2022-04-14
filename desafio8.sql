SELECT
    artists.artist_name AS artista,
    album.album_name AS album
FROM
    SpotifyClone.artists
INNER JOIN
    SpotifyClone.album ON artists.artist_id = album.artist_id
HAVING
    artista = 'Walter Phoenix'; 