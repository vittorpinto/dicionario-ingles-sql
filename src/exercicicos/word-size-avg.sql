-- O comprimento médio das palavras, a mediana, etc

WITH tb_word_sizes AS (

SELECT words, 
    LENGTH(TRIM(REPLACE(words, " ", ""))) AS tamanhoDaPalavra

FROM tb_all

GROUP BY id

ORDER BY id

)

SELECT ROUND(AVG(tamanhoDaPalavra),0) AS mediaTamanhoPalavras

FROM tb_word_sizes