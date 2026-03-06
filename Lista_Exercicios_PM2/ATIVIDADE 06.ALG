Algoritmo "Atividade 06"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
cont, soma, n:inteiro
media:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escreva um número negativo para calcular a media de todos os números")

soma <- 0
cont <- -1
n <- 1

enquanto n > 0 faça

         cont <- cont + 1
         Escreva("Digite um número: ")
         leia(n)
         soma <- soma + n
         
fimenquanto
media <- soma / cont

escreva("A média dos números positivos foi de: ", media)

Fimalgoritmo