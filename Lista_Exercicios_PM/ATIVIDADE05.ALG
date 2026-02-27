Algoritmo "Atividade05"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2026
Var
   // Seção de Declarações das variáveis
   idade:inteiro
   meses:inteiro
   dias:inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Qual é a idade que vamos converter: ")
   leia(idade)
   meses <- (idade * 12)
   dias <- (idade * 365)
   escreval("Meses: ", meses)
   escreval("Dias: ", dias)

Fimalgoritmo