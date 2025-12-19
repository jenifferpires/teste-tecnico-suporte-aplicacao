
---

## 📜 3) `round-3-sql/queries.sql`

**Copiar e colar no arquivo `round-3-sql/queries.sql`:**

```sql
/* 1) Empresas ativas em 20 de Abril */
SELECT DISTINCT e.nome
FROM empresas e
JOIN pagamentos p ON p.empresa_id = e.id
WHERE p.status = 'Confirmado'
  AND p.data_vencimento >= '2023-04-20';

/* 2) Total pago por empresa */
SELECT 
    e.nome,
    COALESCE(SUM(p.valor), 0) AS total_pago
FROM empresas e
LEFT JOIN pagamentos p
       ON p.empresa_id = e.id
      AND p.status = 'Confirmado'
GROUP BY e.id, e.nome;

/* 3) Atualizar vencimento do mais recente */
UPDATE pagamentos p
JOIN (
    SELECT empresa_id, MAX(data_vencimento) AS max_vencimento
    FROM pagamentos
    WHERE status = 'Confirmado'
    GROUP BY empresa_id
) ult ON ult.empresa_id = p.empresa_id 
     AND ult.max_vencimento = p.data_vencimento
JOIN (
    SELECT empresa_id
    FROM pagamentos
    WHERE status = 'Confirmado'
    GROUP BY empresa_id
    HAVING SUM(valor) > 1000
) elegiveis ON elegiveis.empresa_id = p.empresa_id
SET p.data_vencimento = DATE_ADD(p.data_vencimento, INTERVAL 1 MONTH);

/* 4) Tempo médio de confirmação */
SELECT 
    e.nome,
    AVG(DATEDIFF(p.data_confirmacao, p.created_at)) AS media_dias_confirmacao
FROM empresas e
JOIN pagamentos p ON p.empresa_id = e.id
WHERE p.status = 'Confirmado'
GROUP BY e.id, e.nome;
;
