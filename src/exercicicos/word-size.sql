-- Quantas palavras têm 1 letra, 2 letras, etc.

SELECT LENGTH(TRIM(REPLACE(words," ",""))) AS tamanhoPalavra,
    COUNT(*) AS qtPalavras, 
    words AS exemploPalavra --primeiro exemplo

FROM tb_all

WHERE words IS NOT NULL

GROUP BY 1