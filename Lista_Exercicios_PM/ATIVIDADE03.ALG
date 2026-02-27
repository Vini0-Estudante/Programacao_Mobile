Algoritmo "Atividade03"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2026
Var
// Seção de Declarações das variáveis 
num: inteiro
ant: inteiro
suc: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o número para saber qual seu sucessor e antecessor: ")
leia(num)
ant <- (num - 1)
suc <- (num + 1)

escreval("O antecessor de ", num, " é ", ant)
escreval("O sucessor é ", suc)


Fimalgoritmo