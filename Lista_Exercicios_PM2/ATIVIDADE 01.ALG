Algoritmo "Atividade 01"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
i, n, impares, soma:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Soma de pares")
para i de 1 ate 20 faça
     escreva("Digite o ", i,"° numero: ")
     leia(n)
     se n % 2 = 0 entao
        soma <- soma + n
     senao
          impares <- impares + 1
     fimse

fimpara

escreval("A soma dos números pares foi de: ", soma)
escreval("Tiveram ", impares, " numeros impares.")

Fimalgoritmo
