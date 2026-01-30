-- Reporting view: completed orders with margin fields
CREATE OR REPLACE VIEW rpt_completed_orders AS
SELECT
  o.order_id,
  o.customer_id,
  o.vehicle_id,
  o.service_date,
  o.billed_amount,
  o.parts_cost,
  o.labor_cost,
  (o.billed_amount - (o.parts_cost + o.labor_cost)) AS gross_margin,
  CASE
    WHEN o.billed_amount = 0 THEN NULL
    ELSE (o.billed_amount - (o.parts_cost + o.labor_cost)) / o.billed_amount
  END AS gross_margin_pct,
  o.is_warranty,
  o.warranty_cost,
  o.created_date,
  o.completed_date,
  DATEDIFF(o.completed_date, o.created_date) AS turnaround_days
FROM fct_orders o
WHERE o.status = 'Completed';
