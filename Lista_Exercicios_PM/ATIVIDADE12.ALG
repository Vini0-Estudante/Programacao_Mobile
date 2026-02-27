Algoritmo "Atividade12"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2026
Var
// Seção de Declarações das variáveis
idade:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Diga a sua idade:")

leia(idade)

se (idade <= 12) entao
   escreva("É uma criança.")
senao
     se (idade > 12) e (idade <= 17) entao
        escreva("É um adolescente.")
     senao
          se (idade > 17) e (idade <= 59) entao
             escreva("É um adulto.")
          senao
               escreva("é um idoso.")
          fimse
     fimse
fimse


Fimalgoritmo