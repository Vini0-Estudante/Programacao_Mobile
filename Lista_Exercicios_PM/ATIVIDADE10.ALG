Algoritmo "Atividade10"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/02/2026
Var
// Seção de Declarações das variáveis 
n1:real
n2:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite os dois números e descubra qual é o maior:")
leia(n1)
leia(n2)

se n1 > n2 entao
   escreva(n1," é maior que ",n2)
senao
     se n1 < n2 entao
        escreva(n2," é maior que", n1)
     senao
          escreva("São o mesmo número")
     fimse
fimse

Fimalgoritmo