-- 1. Empresas ativas
SELECT DISTINCT e.nome FROM empresas e JOIN pagamentos p ON p.empresa_id = e.id 
WHERE p.status = 'Confirmado' AND p.data_vencimento >= '2023-04-20';

-- 2. Total pago por empresa
SELECT e.nome, COALESCE(SUM(p.valor), 0) AS total_pago FROM empresas e 
LEFT JOIN pagamentos p ON p.empresa_id = e.id AND p.status = 'Confirmado' GROUP BY e.id, e.nome;
