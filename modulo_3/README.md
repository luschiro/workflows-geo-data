# Criando modelos lineares com Python

Após analisarmos nossos dados com um pouco mais de detalhe na análise exploratória, vamos tornar a análise um pouco mais interessante. Iremos criar um primeiro modelo de aprendizado estatístico: a regressão linear simples, a.k.a., "ajustar uma reta". Prever a partir de uma variável independente X, o valor de uma variável Y, considerando o intercepto e a inclinação da reta:

A **regressão linear simples** é um método bem simples de aprendizado de máquina supervisiondo. O aprendizado supervisionado é o tipo de aprendizado em que apontamos para nosso modelo quais são as respostas esperadas no momento do treinamento;

* por exemplo, em um modelo de aprendizado supervisionado para prever se determinada rocha faz parte de uma unidade geológica, é preciso apontar para o modelo alguns exemplos anteriores - tanto das características (*features*) da amostra, quanto se a amostra pertence a unidade ou não, ou seja, nossa variável resposta (*target*) para que assim o modelo entenda o padrão. Com o modelo ajustado, podemos tentar prever se amostras que sabemos apenas as características são da unidade em questão ou não!

  * já o aprendizado não supervisionado é aquele que a máquina encontrará padrões sem uma variável resposta específica. Por exemplo, um modelo de clusterização achará padrões e definirá grupos com base em critérios das amostras. Mas este é um assunto para outra hora!

Um introdução simples teórica sobre a regressão linear simples pode ser vista [aqui](https://www.youtube.com/watch?v=-PGDAbkLzSw&ab_channel=Statplace), [aqui](https://www.youtube.com/watch?v=uF78_zMorHU&ab_channel=UNIVESP) e [aqui](https://pt.wikipedia.org/wiki/Regress%C3%A3o_linear_simples) enquanto algo mais aprofundados por ser acessado no excelente livro gratuito [An Introduction to Statistical Learning](https://www.statlearning.com/).
