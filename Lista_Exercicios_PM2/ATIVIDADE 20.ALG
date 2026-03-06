Algoritmo "Atividade 20"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis
n100,n50,n20,n10,n5,n1,valor, final: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreva("Digite o valor do saque: ")
leia(valor)

enquanto final <> 1 faça

n100 <- valor div 100
valor <- valor mod 100

n50 <- valor div 50
valor <- valor mod 50

n20 <- valor div 20
valor <- valor mod 20

n10 <- valor div 10
valor <- valor mod 10

n5 <- valor div 5
valor <- valor mod 5

n1 <- valor div 1
valor <- valor div 1

final <- final + 1

fimenquanto

escreval("Notas de 100: ",n100)
escreval("Notas de 50: ",n50)
escreval("Notas de 20: ",n20)
escreval("Notas de 10: ",n10)
escreval("Notas de 5: ",n5)
escreval("Moedas de 1: ",n1)

Fimalgoritmo