# Explicações das Queries SQL

## 1) Empresas Ativas em 20 de Abril

Seleciona empresas com pagamentos confirmados que ainda não venceram naquela data.

---

## 2) Total Pago por Empresa

LEFT JOIN para incluir empresas sem pagamentos,
e COALESCE para substituir NULL por 0.

---

## 3) Atualização do Vencimento

Atualiza o pagamento mais recente confirmado de empresas que gastaram
mais de R$1.000,00.

---

## 4) Tempo Médio de Confirmação

Calcula o tempo médio entre a criação e a confirmação de pagamentos.
