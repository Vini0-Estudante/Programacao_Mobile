Algoritmo "ATIVIDADE25"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/02/2026
Var
// Seção de Declarações das variáveis 
n, menor, maior:inteiro
i: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

para i de 1 ate 10 faça
     escreva("Digite o ", i, "º número: ")
     leia(n)
      se i = 1 entao
         maior <- n
         menor <- n
      senao
         se n > maior entao
            maior <- n
         fimse

         se n < menor entao
            menor <- n
         fimse
      fimse
fimpara
escreval("Maior valor digitado: ", maior)
escreval("Menor valor digitado: ", menor)



Fimalgoritmo