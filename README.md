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

### 📘 Round IV – Conceitos (Python e HTTP)

Este round aborda conceitos fundamentais utilizados no dia a dia de suporte a aplicações e análise de sistemas, com foco em lógica, organização de código e comunicação entre sistemas.

---

## 🐍 Python – Lógica e Otimização

### Problema proposto
Identificar quais itens foram agendados, mas ainda não foram enviados, a partir de duas estruturas de dados:
- Um dicionário de itens agendados
- Uma lista de identificadores já enviados

### Solução adotada
Foi implementada uma função em Python que:
- Percorre os itens agendados
- Verifica quais IDs não estão presentes na lista de enviados
- Retorna apenas os itens pendentes

Para melhorar a performance, a lista de enviados é convertida em um `set`, reduzindo o custo de verificação de existência.

### Estrutura dos arquivos
`round-4-conceitos/python`
`funcoes.py # Função principal`
`teste_pratico.py # Execução e validação`



### Exemplo de execução
```bash
python teste_pratico.py
```
Saída esperada
```bash
['Nota Fiscal']
```

### Conceitos aplicados
Funções
Dicionários e listas
Estrutura set para otimização

List comprehension

Organização de código em módulos

Boas práticas de execução (if __name__ == "__main__")

## 📫 Autor

**Jeniffer Pires**  
LinkedIn: https://www.linkedin.com/in/jeniffer-pires-a5a8678a/  
GitHub: https://github.com/jenifferpires  

