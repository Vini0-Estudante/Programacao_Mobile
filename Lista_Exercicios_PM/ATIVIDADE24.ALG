Algoritmo "ATIVIDADE24"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/02/2026
Var
// Seção de Declarações das variáveis 
n, contador, soma:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreva("Digite um número: ")
leia(n)

enquanto (n <> 0) faça

soma <- n + soma
contador <- contador + 1
escreva("Digite um número: ")
leia(n)

fimenquanto

escreval("Soma: ", soma)
escreva("Números digitados", contador)
Fimalgoritmo