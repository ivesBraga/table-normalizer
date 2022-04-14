SELECT song_name AS nome_musica, 
  REPLACE(song, 'Streets', 'Code Review') AS novo_nome 
  FROM SpotifyClone.songs WHERE song_name LIKE '%Streets%'
UNION
SELECT song_name AS nome_musica, 
  REPLACE(song, 'Her Own', 'Trybe') AS novo_nome 
  FROM SpotifyClone.songs WHERE song_name LIKE '%Her Own%'
UNION
SELECT song_name AS nome_musica, 
  REPLACE(song, 'Inner Fire', 'Project') AS novo_nome 
  FROM SpotifyClone.songs WHERE song_name LIKE '%Inner Fire%'
UNION
SELECT song_name AS nome_musica, 
  REPLACE(song, 'Silly', 'Nice') AS novo_nome 
  FROM SpotifyClone.songs WHERE song_name LIKE '%Silly%'
UNION
SELECT song_name AS nome_musica, 
  REPLACE(song, 'Circus', 'Pull Request') AS novo_nome 
  FROM SpotifyClone.songs WHERE song_name LIKE '%Circus%'
ORDER BY nome_musica; 