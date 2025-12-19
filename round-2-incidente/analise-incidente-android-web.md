# Round II – Análise de Incidente Android x Web

## Descrição do Problema

O cliente realizou pedidos no App Android, a sincronização ocorreu com sucesso,  
porém ao visualizar os pedidos no sistema Web, eles aparecem sem itens e com  
valor total zerado.

---

## Hipóteses Iniciais

Este cenário indica:
- O pedido foi criado no sistema;
- A sincronização não falhou integralmente;
- Porém houve inconsistência de dados entre as camadas de integração.

---

## Etapas de Investigação

### 🎯 1. Coleta de Informações

- IDs dos pedidos afetados
- Versão do App Android
- Ambiente (produção/homologação)
- Verificar se o problema ocorre em todos os pedidos
- Testar pedidos feitos via Web

---

### 🗃️ 2. Validação da Persistência no Banco

**Exemplo de consultas:**

```sql
-- Verificar pedido
SELECT id, valor_total, status
FROM pedidos
WHERE id = :pedido_id;

-- Verificar itens do pedido
SELECT *
FROM pedido_itens
WHERE pedido_id = :pedido_id;

Possíveis resultados:

Pedido sem itens
Itens existem, mas valor total não calculado
Persistência parcial (falha transacional)

🔌 3. Análise de Fluxo App → API

Verificar:

Payload enviado pelo App

O endpoint responsável

Se os itens vêm no request

{
  "cliente_id": 123,
  "itens": [
    { "produto_id": 10, "quantidade": 2, "preco": 50 }
  ],
  "total": 100
}

Hipóteses:

App envia sem itens
Backend falha ao processar itens
Cálculo do total ocorre antes dos itens
Incompatibilidade de versões

🧾 4. Análise de Logs

Busque:

Exceções na sincronização
Erros silenciosos
Rollback por falha em transações

🔄 5. Controle Transacional

Verifique transações:
BEGIN;
INSERT INTO pedidos...
INSERT INTO pedido_itens...
COMMIT;
Se não houver rollback ao falhar os itens, o pedido fica inconsistente.

🛠️ 6. Ações Corretivas

Corrigir endpoint

Implementar transação única

Ajustar cálculo de total

Validar payload antes de persistir

📣 7. Comunicação com o Cliente

Explicar a causa raiz
Informar correção
Orientar atualização do App, se necessário

Conclusão

O problema caracteriza uma falha de integração entre o App Android e o sistema Web,
relacionada à persistência dos itens ou à falta de controle transacional no backend.