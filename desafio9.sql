SELECT 
    COUNT(usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_de_reproducoes
WHERE
    usuario_id = 1;