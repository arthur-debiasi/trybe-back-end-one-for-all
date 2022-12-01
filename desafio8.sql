SELECT 
    art.nome AS artista, alb.titulo_album AS album
FROM
    SpotifyClone.artistas AS art
        RIGHT JOIN
    SpotifyClone.albuns AS alb ON art.id = alb.artista_id
WHERE
    art.nome = 'Elis Regina';