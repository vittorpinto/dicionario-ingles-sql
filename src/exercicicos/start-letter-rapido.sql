-- quantas palavras começam com A, B, etc. 

SELECT SUBSTR(words, 1, 1) AS letras, 
    COUNT(DISTINCT id) AS qtLetras

FROM tb_all

WHERE words IS NOT NULL

GROUP BY 1