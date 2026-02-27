Algoritmo "ATIVIDADE20"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/02/2026
Var
// Seção de Declarações das variáveis 
peso:real
altura:real
imc:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval("Calculo de IMC")
escreva("Digite o peso: ")
leia(peso)
escreva("Digite a altura: ")
leia(altura)
imc <- peso / (altura*altura)

se (imc <= 17) entao
   escreva("Muito abaixo do peso")
senao se (imc > 17 E imc <= 18.5) entao
   escreva("Abaixo do peso")
senao se (imc > 18.5 E imc <= 25) entao
   escreva("Peso normal")
senao se (imc > 25 E imc <= 30) entao
   escreva("Acima do peso")
senao se (imc > 30 E imc <= 35) entao
   escreva("Obesidade nivel 1")
senao se (imc > 35 E imc <= 40) entao
   escreva("Obesidade nivel 2")
senao
   escreva("Obesidade nivel 3")
fimse

Fimalgoritmo