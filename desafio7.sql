SELECT 
    art.nome AS artista,
    alb.titulo_album AS album,
    COUNT(seg.artista_id) AS seguidores
FROM
    SpotifyClone.artistas AS art
        RIGHT JOIN
    SpotifyClone.albuns AS alb ON art.id = alb.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artistas AS seg ON alb.artista_id = seg.artista_id
GROUP BY art.nome , alb.titulo_album
ORDER BY COUNT(seg.artista_id) DESC , art.nome , alb.titulo_album;

