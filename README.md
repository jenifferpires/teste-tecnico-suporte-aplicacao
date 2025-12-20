# Teste Técnico – Analista de Suporte à Aplicação

Este repositório contém a resolução de um teste técnico para a vaga de  
**Analista de Suporte à Aplicação**.

O objetivo deste projeto é demonstrar raciocínio técnico, capacidade de análise,  
comunicação e organização diante de cenários realistas de suporte a aplicações.

---

## 🧩 Visão Geral

O teste foi dividido em quatro peças:

### 🧠 Round I – Priorização de Chamados
Análise e priorização de Tks com base em impacto no cliente, negócios e operação.

📁 Arquivo:  
`round-1-priorizacao/priorizacao-tks.xlsx`

---

### 📊 Round II – Análise de Incidente  
Investigação e resolução de um chamado onde pedidos feitos no App Android  
não eram exibidos corretamente no sistema Web.

📁 Arquivo:  
`round-2-incidente/analise-incidente-android-web.md`

---

### 💾 Round III – SQL  
Consultas SQL adequadas a um cenário de pagamentos e empresas, com explicações  
tecnicamente justificadas.

📁 Arquivos:  
`round-3-sql/queries.sql`  
`round-3-sql/explicacoes-sql.md`

---

🔹🐍 Round IV – Conceitos Técnicos (Python, HTTP e Integração).

Este round aborda conceitos fundamentais utilizados no dia a dia de suporte a aplicações e análise de sistemas, com foco em lógica, organização de código e comunicação entre sistemas.

1️⃣ Explicação do código Python

O código em Python foi desenvolvido para identificar itens agendados que ainda não foram enviados, um cenário comum em rotinas de integração, mensageria e processamento assíncrono.

A função principal recebe:

agendados: um dicionário onde a chave é o ID e o valor é o item agendado

enviados: uma lista contendo os IDs que já foram processados/enviados

A lógica consiste em:

Converter a lista de enviados em um set, otimizando a verificação de existência (O(1));

Percorrer os itens agendados;

Retornar apenas os itens cujo ID não está presente na lista de enviados.


Esse tipo de lógica é muito comum em sistemas de:

filas
sincronização entre sistemas

reprocessamento de dados

integrações entre APIs


2️⃣ Estrutura do código Python

`round-4-conceitos/python/`

`funcoes.py      #Contém a função encontrar_nao_enviados`

`teste_pratico.py  #Script de execução e validação`

`http_request_exemplo.py  #Exemplo de request HTTP usando Python`


O código foi separado em módulos para facilitar:

reutilização

manutenção

testes

leitura por outros desenvolvedores


3️⃣ Papel da biblioteca requests

A biblioteca requests é amplamente utilizada em Python para realizar chamadas HTTP de forma simples e legível.

Ela é muito comum em rotinas de:

consumo de APIs

integrações entre sistemas

automações

suporte técnico (testes de endpoints, validações manuais).



4️⃣ Exemplo prático de request HTTP com Python
import requests

url = "https://api.exemplo.com/clientes/123"

headers = {

    "Authorization": "Bearer token_exemplo",
    "Content-Type": "application/json"
}

payload = {

    "nome": "Empresa Exemplo",
    "email": "contato@exemplo.com",
    "ativo": True
}

response = requests.put(url, json=payload, 
headers=headers)

if response.status_code == 200:

    print("Cliente atualizado com sucesso")
else:

    print(f"Erro ao atualizar cliente: {response.status_code}")


🔎 O que acontece nesse exemplo:

PUT: método HTTP utilizado para atualização de recursos
HTTPS: garante comunicação segura
headers: contém autenticação e tipo de conteúdo
payload: dados enviados para atualização
status_code: usado para validação do retorno da API


5️⃣ Relação com suporte e integração de sistemas

Esses conceitos são essenciais para rotinas de suporte técnico e sustentação, pois permitem:

Diagnosticar falhas de integração entre sistemas
Testar endpoints manualmente
Validar payloads enviados e recebidos
Simular chamadas feitas por aplicações frontend ou mobile
Apoiar times de desenvolvimento na identificação de erros

## 📫 Autor

**Jeniffer Pires**  
LinkedIn: https://www.linkedin.com/in/jeniffer-pires-a5a8678a/  
GitHub: https://github.com/jenifferpires  

