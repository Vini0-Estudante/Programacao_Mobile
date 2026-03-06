Algoritmo "Ativividade 09"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
i, num, cont:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite o número para saber se é primo: ")
leia(num)

enquanto num < 0 faça
escreva("Invalido, tente novamente: ")
leia(num)
fimenquanto

para i de 1 ate num faça

se num % i = 0 entao
cont <- cont + 1
fimse

fimpara

se cont = 2 entao
   escreva("É um número primo.")

senao
     escreva("Não é um número primo.")
     
fimse

Fimalgoritmo