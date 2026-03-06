Algoritmo "Atividade 17"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
i: inteiro
n, aprovados, rec, reprovados:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 20 faça

escreva("Digite a nota: ")
leia(n)

     se n >= 7 entao
        aprovados <- aprovados + 1
     senao
          se n >= 5 entao
             rec <- rec + 1
          senao
               reprovados <- reprovados + 1
          fimse
     fimse

fimpara

aprovados <- aprovados / i * 100
rec <- rec / i * 100
reprovados <- reprovados / i * 100

escreval("As porcentagens dos alunos:")
escreval("Aprovados: ", aprovados, "%")
escreval("Recuperação: ", rec, "%")
escreval("Reprovados: ", reprovados, "%")

Fimalgoritmo