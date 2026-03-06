Algoritmo "Atividade 13"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
i,maiordia:inteiro
venda,total,vendaanterior:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

para i de 1 ate 30 faça

     vendaanterior <- venda

     escreva("Digite a quantidade de vendas de hoje: ")
     leia(venda)
     
     se venda < 5 entao
        escreval("Estoque insuficiente.")
     fimse

     se vendaanterior < venda então
        maiordia <- i
     fimse
        
     total <- total + venda
     
fimpara

escreval("O total da venda dos 30 dias foi de R$:",total)
escreva("O dia com maior venda foi o dia ",maiordia)

Fimalgoritmo