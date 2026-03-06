Algoritmo "Atividade 02"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/02/2026
Var
// Seção de Declarações das variáveis 
nota, media:real
i:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

para i de 1 ate 5 faca
     escreva("Digite a ", i, "° nota: ")
     leia(nota)

     enquanto (nota < 0) ou (nota > 10) faca
              escreva("Invalido, tente novamente: ")
              leia(nota)
     fimenquanto

     media <- media + nota

fimpara

media <- media / 5

escreva("A media das notas foi de: ", media)

Fimalgoritmo