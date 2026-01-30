# Data Dictionary — Autovolt (Synthetic)

## Fact table (example)
**fct_orders**
- order_id (PK)
- customer_id (FK)
- vehicle_id (FK)
- service_date
- status (Created / In Progress / Completed)
- billed_amount
- parts_cost
- labor_cost
- is_warranty (0/1)
- warranty_cost
- created_date
- completed_date

## Dimensions (example)
**dim_customer**
- customer_id (PK)
- customer_type (Retail / Fleet / Warranty)
- acquisition_channel (Organic / Paid / Referral)

**dim_vehicle**
- vehicle_id (PK)
- make
- model
- model_year
- battery_type (NiMH / Li-ion)

**dim_service**
- service_id (PK)
- service_type (Battery replace / Diagnosis / Maintenance)
- service_category
