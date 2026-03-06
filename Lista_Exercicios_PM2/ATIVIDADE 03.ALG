Algoritmo "Atividade 03"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
maior, n, menor:real
i:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 15 faça
     escreva("Digite um número: ")
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
escreval("Menor: "menor)
escreval("Maior: "maior)

Fimalgoritmo