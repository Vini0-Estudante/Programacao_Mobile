Algoritmo "Atividade 11"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026
Var
// Seção de Declarações das variáveis 
valor, bruto, desconto, Td:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreva("Digite o valor: ")
leia(valor)

enquanto valor <> 0 faça
         bruto <- bruto + valor
         se valor > 100 entao
            desconto <- valor * 0.05
            Td <- Td + desconto
         fimse
         escreva("Digite outro valor: ")
         leia(valor)
fimenquanto

escreval("O valor bruto foi de: ", bruto)
escreval("O total em descontos aplicados foi de R$:", Td)
escreva("Logo o total ficou em R$:", bruto - Td)


Fimalgoritmo