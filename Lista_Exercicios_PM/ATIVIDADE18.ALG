Algoritmo "ATIVIDADE18"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/02/2026
Var
// Seção de Declarações das variáveis 
salario:real
parcela:real
multi:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreva("Digite o valor do salario: ")
leia(salario)
escreva("Digite o valor da parcela: ")
leia(parcela)

multi <- salario * 0.3

se (parcela >= multi) entao
   escreva("Aprovado.")
senao
     escreva("Negado.")
fimse

Fimalgoritmo