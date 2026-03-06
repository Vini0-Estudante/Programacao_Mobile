Algoritmo "Atividade 10"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
cA, cB, pA , pB:real
anos:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Simulador de crescimento populacional: ")
escreval("A cidade A cresce 3% a sua população no ano.")
escreva("Quantas pessoas tem na cidade A: ")
leia(cA)
escreval("A cidade B cresce 1.5% a sua população no ano.")
escreva("Quantas pessoas tem na cidade B: ")
leia(cB)

enquanto cA < cB faça
pA <- cA * 0.03
pB <- cB * 0.015
cA <- cA + pA
cB <- cB + pB
anos <- anos + 1

fimenquanto

escreva("A cidade A vai ultrapassar a B em ", anos, " anos.")

Fimalgoritmo