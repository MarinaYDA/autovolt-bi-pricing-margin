# Autovolt BI — Pricing & Margin Dashboard (SQL + Power BI)

**Tools:** SQL (MySQL), Power BI (semantic model + DAX), Python (optional for data prep)  
**Data:** Fully synthetic dataset (no customer PII).  
**Goal:** Show an end-to-end BI workflow: raw operational data → reporting layer → governed KPIs → decision-ready dashboards.

---

## Business problem
A hybrid-battery service company needs reliable, consistent reporting to answer:
1) Which services/models drive the best margin?
2) Where do warranty returns cluster (by model, battery type, installer, or time)?
3) What pricing/segmentation actions can increase margin without reducing volume?

---

## What I built
- **Reporting layer in SQL:** cleaned and standardized tables + reporting views for analysis
- **Star-schema model:** facts + dimensions to support a scalable semantic model
- **Governed KPIs:** metric definitions documented and implemented as DAX measures
- **Power BI dashboard:** executive overview + pricing/margin deep dive + warranty/ops monitoring

---

## Dashboard preview
> Screenshots (click to view):
- Executive overview: `images/dashboard_exec.png`
- Pricing & margin analysis: `images/dashboard_pricing.png`
- Warranty & operations: `images/dashboard_warranty.png`
- Model relationships: `images/model_relationships.png`

---

## Key KPIs (examples)
- Revenue, Gross Margin %, Avg Order Value
- Warranty Rate %, Warranty Cost %, Repeat Visit Rate
- Turnaround Time (days), Installation Time (hours)

Full definitions: `docs/metrics_definitions.md`

---

## Findings (example insights)
- Margin is driven more by **battery type + vehicle model** than by order volume.
- A small set of segments shows **elevated warranty risk**, suggesting process or parts issues.
- Price experiments can target **high-demand / low-margin** segments without hurting total volume.

---

## Recommendations (BI → action)
- Standardize pricing bands by segment (model + battery type + customer type).
- Track warranty KPIs weekly with alert thresholds.
- Create an “exceptions list” for segments where warranty rate exceeds baseline.

---

## Repo contents
- `sql/` → schema + reporting views + KPI queries
- `docs/` → KPI definitions, data dictionary, refresh notes
- `images/` → dashboard screenshots + model diagram
- `data/` → small synthetic sample dataset (for reproducibility)

---

## How to run
1) Load tables (see `sql/01_schema.sql`)
2) Create reporting views (`sql/02_views_reporting_layer.sql`)
3) Open Power BI file (if included) or rebuild visuals using the provided KPI queries.
4) Verify KPIs match definitions in `docs/metrics_definitions.md`

---

## Disclaimer
This portfolio project uses synthetic data and a fictional company (“Autovolt”) for privacy. It demonstrates real BI workflow and methods without exposing any confidential information.
