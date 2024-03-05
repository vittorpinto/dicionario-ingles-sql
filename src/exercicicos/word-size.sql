SELECT LENGTH(words) AS tamanhoPalavra,
    COUNT(*) AS qtPalavras

FROM tb_all

WHERE words IS NOT NULL

GROUP BY 1