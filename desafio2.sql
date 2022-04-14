SELECT 
  COUNT (DISTINCT musica.song_name) AS cancoes,
  COUNT (DISTINCT artista.artist_name) AS artistas,
  COUNT (DISTINCT disco.album_name) AS albuns
FROM
 SpotifyClone.songs AS musica,
 SpotifyClone.artists AS artista,
 SpotifyClone.album AS disco;