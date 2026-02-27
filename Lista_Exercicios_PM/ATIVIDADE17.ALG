Algoritmo "ATIVIDADE17"
// Disciplina  : Lógica de Programação
// Professor   : André Olímpio 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/02/2026
Var
// Seção de Declarações das variáveis 
usuario:caractere
senha:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreva("Usúario: ")
leia(usuario)
escreva("Senha: ")
leia(senha)

se (usuario = "admin") entao
   se (senha = 1234) entao
      escreva("Acesso permitido.")
   senao
        escreva("Acesso negado")
   fimse
senao
     escreva("Login invalido")

fimse

Fimalgoritmo