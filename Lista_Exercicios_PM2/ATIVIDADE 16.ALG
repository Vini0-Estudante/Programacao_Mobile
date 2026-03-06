Algoritmo "Atividade 16"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
emprestimo,juros,total,totaljuros:real
quantidade:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Qual o valor do emprestimo: ")
leia(emprestimo)
escreva("Juros mensais (%): ")
leia(juros)
escreva("Quantidade de parcelas: ")
leia(quantidade)

juros <- juros / 100

total <- emprestimo * (1 + juros) ^ quantidade

totaljuros <- total - emprestimo

escreval("O valor pago com juros foi de R$:", total)
escreva("Os juros foram de R$:", totaljuros)


Fimalgoritmo