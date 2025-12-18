# Round II – Resolução do chamado (Android x Web)

O cenário indica inconsistência de dados entre App e Web (pedidos sem itens e valor zerado).

### Análise Técnica
1. **Triagem:** Coleta de IDs de clientes, pedidos e versões do App.
2. **Banco de Dados:** Verificação das tabelas `pedidos` e `pedido_itens`.
3. **Integração:** Análise do payload JSON enviado pelo Android para a API.
4. **Logs:** Busca por exceções de violação de chave estrangeira ou falhas de transação.
5. **Causa Provável:** Falta de atomicidade na transação (o pedido é salvo, mas os itens falham e não há rollback).
