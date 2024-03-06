-- Qual palavra vem depois de kayak? Qual palavra vem 10 
-- palavras depois de kayak? E duas palavras antes?

SELECT id,
    LAG(words, 10) OVER (ORDER BY id) AS previous10Words,
    words,
    LEAD(words, 10) OVER (ORDER BY id) AS next10Words

FROM tb_all

WHERE id >=84910 and id <=84930