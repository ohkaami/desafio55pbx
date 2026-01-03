import re
import math

#Questão 1
chamadas =[
{ "id": 600, "duracao": 3000, "status": "Concluída"},
{ "id": 602, "duracao": 4000, "status": "Concluída"},
{ "id": 603, "duracao": 3, "status": "Concluída"},
{ "id": 604, "duracao": 0, "status": "Erro"}
]

#Lista de dicionários
#Lembrando que dict = {'chave': 'valor'}

filtrar_chamadas_criticas = [c for c in chamadas if c["duracao"] <= 3]
print(filtrar_chamadas_criticas)
#List comprehension

#Questão 2 - 
lista_telefone = ["+55(61)9999999999", "+55619888999999", "+55(61)99000-9999" ]
nova_lista_apenas_num = [re.sub(r'[^0-9]', '', n) for n in lista_telefone]
print(nova_lista_apenas_num) 
#Removendo apenas os caracteres especiais e deixando somente os números.

num = [int(v) for v in nova_lista_apenas_num]
print(num)
#Transformando a lista de strings em números (int).

#Questão 3
 #Lista contendo a duração das chamadas mensais

duracao_chamadas = [3000, 500, 200, 10000, 640, 122, 60] 
def multiplicar_elementos(duracao_chamadas):
  preco_chamada = 3 #Preço por minuto
  resultado = [0] #Lista começando com 0
  for i in duracao_chamadas:
    resultado.append(i * preco_chamada) #Adiciona um novo número a lista, vezes o preço da chamada
  valor_total = sum(duracao_chamadas) #Soma de todas as chamadas 
  print(valor_total)

  print(f"O valor das chamadas, vezes o preço é: {(resultado)}. O valor total do faturamento é: {(valor_total)}")
  

print(multiplicar_elementos(duracao_chamadas))


"""for t in duracao_chamadas:
  soma = 0
  total = 3
  valortotal = t * total
  soma += valortotal
  print(valortotal)"""
# Esse exemplo somente retorna os valores das chamadas, não o total




