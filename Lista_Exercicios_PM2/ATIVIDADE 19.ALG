Algoritmo "Atividade 19"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
i, d3, d5, d3e5:inteiro
n:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 25 faça
     escreva("Digite o número: ")
     leia(n)
     
     se n mod 3 = 0 entao
        d3 <- d3 + 1
     fimse
     se n mod 5 = 0 entao
        d5 <- d5 + 1
     fimse
     se (n mod 3 = 0) e (n mod 5 = 0) entao
        d3e5 <- d3e5 + 1
     fimse
     
fimpara

escreval("Números divisiveis por 3: ", d3)
escreval("Números divisiveis por 5: ", d5)
escreval("Números divisiveis por 3 E 5: "d3e5)

Fimalgoritmo