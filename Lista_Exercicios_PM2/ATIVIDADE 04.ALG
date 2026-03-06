Algoritmo "Atividade 04"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
n, a, b, c, i:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

a <- 0
b <- 0
c <- 0

para i de 1 ate 30 faca

   escreva("Digite o ", i, " numero: ")
   leia(n)

   se (n >= 0) e (n <= 25) entao
        a <- a + 1
   senao
        se n <= 50 entao
             b <- b + 1
        senao
             c <- c + 1
        fimse
   fimse

fimpara

escreval("0 a 25: ", a)
escreval("26 a 50: ", b)
escreval("Maior que 50: ", c)

Fimalgoritmo