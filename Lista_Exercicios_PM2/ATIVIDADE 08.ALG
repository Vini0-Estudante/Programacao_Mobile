Algoritmo "Atividade 08"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis
total, maiorvenda, valor:real
i:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
maiorvenda <- 0

para i de 1 ate 10 faça

     escreva("Digite o valor da sua venda: ")
     leia(valor)
     se (valor >= maiorvenda) entao
     maiorvenda <- valor
     fimse
     se (valor >= 5000) entao
        total <- total + valor * 1.10
     senao
          total <- total + valor * 1.05
     fimse

fimpara

escreval("A maior venda foi de R$:",maiorvenda)
escreva("O total das vendas com o bonus foi de R$:", total)


Fimalgoritmo