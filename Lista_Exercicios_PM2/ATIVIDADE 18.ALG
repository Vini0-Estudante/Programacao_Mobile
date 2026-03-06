Algoritmo "Atividade 18"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/03/2026
Var
// Seção de Declarações das variáveis 
senha:caractere
erro:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Digite a senha: ")
leia(senha)

enquanto senha <> "1234" faça
         erro <- erro + 1
         escreva("Senha invalida tente novamente: ")
         leia(senha)
fimenquanto

escreva("Senha certa, tentativas necessarias: ", erro)

Fimalgoritmo