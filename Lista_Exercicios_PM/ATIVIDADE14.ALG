Algoritmo "Atividade14"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2026
Var
// Seção de Declarações das variáveis 
valor:real
promo:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Quanto foi a compra? Vamos aplicar o desconto: ")
leia(valor)

se (valor > 100) entao
   promo <- valor * 0.9
   escreva("O valor final vai ficar em: R$:",promo)
senao
     escreva("Sem nenhum disconto.")
fimse


Fimalgoritmo