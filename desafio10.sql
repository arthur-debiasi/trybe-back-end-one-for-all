SELECT 
    c.titulo_cancao AS nome, COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS h ON c.id = h.cancao_id
        INNER JOIN
    SpotifyClone.usuarios AS u ON h.usuario_id = u.id
WHERE
    u.plano_id = 1 OR u.plano_id = 4
GROUP BY c.titulo_cancao
ORDER BY nome;