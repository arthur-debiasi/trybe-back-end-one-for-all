SELECT 
    c.titulo_cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS h ON c.id = h.cancao_id
GROUP BY c.titulo_cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;