# Round IV – Conceitos Técnicos

## 1) O que o código Python faz

Ele identifica quais itens agendados ainda não foram enviados,
comparando IDs agendados e enviados.

---

## 2) O que é HTTP vs HTTPS

HTTP é o protocolo de comunicação básica entre cliente e servidor.
HTTPS adiciona criptografia via TLS/SSL para segurança dos dados.

---

## 3) Exemplo de request de atualização via HTTPS

```http
PUT /api/clientes/123 HTTP/1.1
Host: api.exemplo.com
Authorization: Bearer token_exemplo
Content-Type: application/json

{
  "nome": "Empresa Exemplo",
  "email": "contato@exemplo.com",
  "ativo": true
}
