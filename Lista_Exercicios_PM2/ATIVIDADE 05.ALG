Algoritmo "Atividade 05"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
n, i, fat:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
enquanto n < 1 faça
         escreva("Digite um número inteiro positivo: ")
         leia(n)
fimenquanto

fat <- 1

para i de 1 ate n faça
     fat <- fat * i

fimpara

escreva("O fatorial de ", n, " é: ", fat)

Fimalgoritmo