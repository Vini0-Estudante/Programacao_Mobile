Algoritmo "Atividade 15"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
N,i, a, b, prox, pares:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreva("Digite o numero de termos para sua sequência de Fibonacci: ")
leia(N)

a <- 0
b <- 1

para i de 1 ate N faça
      se prox mod 2 = 0 entao
         pares <- pares + 1
      fimse
      escreval(a, " ")
      prox <- a + b
      a <- b
      b <- prox


fimpara

escreva("A sequencia tem ", pares," numeros pares.")
Fimalgoritmo