SELECT 
    art.nome, alb.titulo_album
FROM
    SpotifyClone.artistas AS art
        RIGHT JOIN
    SpotifyClone.albuns AS alb ON art.id = alb.artista_id
WHERE
    art.nome = 'Elis Regina';