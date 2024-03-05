# Exercitando SQL com um dicionário Inglês

Bem vindo ao meu repositório :)
Irei exercitar meu SQL aqui com a sugestão de um camarada do Reddit [camarada do Reddit](https://www.reddit.com/r/SQL/comments/g4ct1l/comment/fnx11mc/). Fique a vontade para também treinar comigo.
Utilizei o dicionário [OPTED - The Online Plain Text English Dictionary](https://www.mso.anu.edu.au/%7Eralph/OPTED/).

## Setup

Usei uma ferramenta massa para Web Scrapping, o [BeautifulSoup](https://pypi.org/project/beautifulsoup4/). É só dar um
```shell
pip install beautifulsoup4
```
no console que é sucesso.

## Exercícios

Baixe o dicionário como um arquivo CSV. Um único arquivo com uma coluna chamada WORDS onde estão todas as palavras da língua inglesa.

Agora há muitas coisas que você pode fazer com esses dados, olhar muitas distribuições, quantas palavras começam com A, B, etc. Quantas palavras têm 1 letra, 2 letras, etc.

Qual palavra vem depois de kayak? Qual palavra vem 10 palavras depois de kayak? E duas palavras antes? O comprimento médio das palavras, a mediana, etc.

Mas isso é tudo coisa básica, certo? EDIT: Agora tente encontrar todos os palíndromos em inglês. Depois tente encontrar todos os anagramas em inglês.

Vamos dizer que você está jogando scrabble e só pode escolher 7 letras, quais 7 letras você pode escolher para formar o maior número de palavras de 7, 6, 5, 4, 3, 2 e 1 letra em inglês?

Agora no Scrabble as letras que você pode selecionar são limitadas às peças na sacola… então adicione essa camada de complexidade.

Agora no Scrabble você só pode usar todas as suas letras sem se juntar a outra palavra se for o primeiro a jogar. Então adicione palavras de 8 letras à lista.

Quando você tiver uma resposta para a questão do Scrabble, você vai entender mais ou menos tudo o que há para entender sobre SQL.

## Aprofundando

Se você realmente quiser ir para o próximo nível, calcule qual palavra de 8 letras em inglês você pode formar para marcar o máximo de pontos no Scrabble, e quais 7 letras você precisaria ter para fazer isso. Você poderia até adicionar os tiles de bônus se quisesse ficar mais complexo, ou até mesmo adicionar uma palavra de 9 ou 10, qualquer comprimento que implicasse que você juntou uma palavra acima e uma palavra abaixo para formar uma palavra muito mais longa. Chegar a responder essas perguntas seria muito complexo, e o SQL provavelmente não é o melhor lugar para responder perguntas assim… mas você poderia fazer isso, e você pode aprender todas as complexidades apenas começando de (1) tabela com (1) coluna de dados. Você pode precisar construir funções, ou um sproc, ou views, ou loops.

## Outras ideias para exercícios

Não está interessado no desafio do dicionário? Faça um banco de dados de estatísticas de beisebol, ou de futebol americano. Vá lá e encontre dados que sejam significativos para você, que você já entenda naturalmente, e depois use SQL para fazer algo significativo com eles. Encontre algo em que você já seja um especialista no assunto e use SQL para responder a perguntas interessantes. Construa um banco de dados de receitas e preços de ingredientes. Se você tem 8 coisas na geladeira, que receitas você pode cozinhar com 9 coisas (ou seja, só precisando sair e comprar uma.)

Voltando ao meu exemplo anterior de soletrar fair a partir de affairs: Escreva em um pedaço de papel e descubra como você resolveria isso com uma caneta. Depois pesquise no Google conceitos de SQL que te ajudem a conseguir isso. Faça isso com um dicionário (1) coluna de dados… depois faça isso para as estatísticas de beisebol… depois faça isso para os dados financeiros de uma empresa. Eventualmente você será um desenvolvedor ou arquiteto SQL sênior, e a maior parte do que você sabe será um produto do que você se ensinou.