Algoritmo "Atividade 12"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
c, idade, maior, total:inteiro
media, menor:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite a idade (Digite 0 para finalizar): ")
leia(idade)

enquanto idade <> 0 faça

         c <- c + 1

         se idade >= 18 entao
            maior <- maior + 1
         senão
              menor <- menor + 1
         fimse
         
         total <- total + idade

         escreva("Digite a idade (Digite 0 para finalizar): ")
         leia(idade)
fimenquanto

menor <- (menor / c) * 100
media <- total / c

escreval("A média das idades é de: ",media)
escreval("A quantidade de maiores de idade é: ",maior)
escreva("A porcentagem de menores do total é de: ",menor,"%")

Fimalgoritmo