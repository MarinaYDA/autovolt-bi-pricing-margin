# KPI Definitions — Autovolt BI (Pricing & Margin)

## Core financial
**Revenue**
- Definition: Sum of billed amount for completed orders
- Formula: SUM(fct_orders[billed_amount])

**Gross Margin**
- Definition: Revenue minus cost of parts/labor attributed to the order
- Formula: SUM(billed_amount - (parts_cost + labor_cost))

**Gross Margin %**
- Definition: Gross Margin / Revenue
- Formula: DIVIDE([Gross Margin], [Revenue])

**Average Order Value (AOV)**
- Definition: Revenue / # of completed orders
- Formula: DIVIDE([Revenue], [Completed Orders])

## Operations
**Completed Orders**
- Definition: Count of orders with status = Completed
- Formula: COUNTROWS(FILTER(fct_orders, status="Completed"))

**Turnaround Time (days)**
- Definition: Average days between order_created_date and order_completed_date
- Formula: AVERAGEX(fct_orders, DATEDIFF(created_date, completed_date, DAY))

## Warranty & quality
**Warranty Orders**
- Definition: Count of orders flagged as warranty (is_warranty = 1)
- Formula: COUNTROWS(FILTER(fct_orders, is_warranty=1))

**Warranty Rate %**
- Definition: Warranty Orders / Completed Orders
- Formula: DIVIDE([Warranty Orders], [Completed Orders])

**Repeat Visit Rate %**
- Definition: % of customers with >1 order in last 12 months
- Implementation note: requires customer-level distinct count & repeat flag
