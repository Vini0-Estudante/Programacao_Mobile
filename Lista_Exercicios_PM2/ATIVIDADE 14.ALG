Algoritmo "Atividade 14"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
total, A, B, C, inv, maior:inteiro
Ap, Bp, Cp: real
voto:caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Escreva o cantidado que quer votar (A, B, C)")
escreva("Digite '0' para finalizar a pesquisa: ")
leia(voto)

enquanto voto <> "0" faça

total <- total + 1

se (voto = "a") ou (voto = "A") entao
   A <- A + 1
senao
     se (voto = "b") ou (voto = "B") entao
     B <- B + 1
     senao
          se (voto = "c") ou (voto = "C") entao
          C <- C + 1
          senao
               escreval("Voto invalido.")
               inv <- inv + 1
          fimse
     fimse
fimse

maior <- A

se B > maior entao
   maior <- B
fimse
se C > maior entao
   maior <- C
fimse

escreval("Escreva o cantidado que quer votar (A, B, C)")
escreva("Digite '0' para finalizar a pesquisa: ")
leia(voto)


fimenquanto

Ap <- (A / total) * 100
Bp <- (B / total) * 100
Cp <- (C / total) * 100

escreval("O candidato A teve:", A, " voto(s) com ", Ap, "%")
escreval("O candidato B teve:", B, " voto(s) com ", Bp, "%")
escreval("O candidato C teve:", C, " voto(s) com ", Cp, "%")
escreva("Votos invalidos: ",inv)

Fimalgoritmo