# GitHub Copilot Executive Dashboard — Unified Chart Spec
# Merged from brainstorm session + Dashboard Ideas brain dump.docx
# Last updated: 2026-04-06

---

## GLOBAL DESIGN DECISIONS

- **Primary filter toggle**: Business vs Individual (applies to all pages)
- **Color palette**: Purple #7B68EE, Blue #49CCF9, Teal #79D9B9, Pink #FD71AF, Orange #FFB08E
- **Cadence**: Monthly default, with weekly/daily drill-down where noted
- **Cohort logic**: Cohorts defined by first-activation month

---

## PAGE 1 — EXECUTIVE SUMMARY (The Money Slide)

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 1 | **KPI Banner**: MAU, WAU, DAU, Gross Margin, MoM Growth | Large KPI tiles with sparklines | Top-of-page hero metrics. Color-coded delta arrows. |
| 2 | **Total Revenue (ARR Run-Rate)** | Line chart with YoY % growth annotation | Current month × 12. The #1 business metric. |
| 3 | **Total Assigned Seats Over Time** | Area chart stacked by plan (Individual / Business / Enterprise) | Shows mix shift alongside growth. |
| 4 | **Monthly Active Users (MAU)** | Line chart with assigned seats as lighter reference line | Gap = shelfware. Red flag if it widens. |
| 5 | **Gross Margin % Over Time** | Line chart with target band | (Revenue - COGS) / Revenue. "Is this a real business?" |

---

## PAGE 2 — USER GROWTH & ACQUISITION

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 6 | **Net Seat Adds per Month** | Waterfall bar (adds up, churn down, net line overlay) | Shows gross motion — reveals if growth masks churn. |
| 7 | **Activations + Resurrections – Churn YTD** | Stacked bar (green=activations, teal=resurrections, pink=churn) | Net user movement decomposed. From brain dump. |
| 8 | **Activated Seat % (MAU / Assigned)** | Line chart or KPI gauge | "Are people using what they bought?" Target ≥ 70%. |
| 9 | **New Org Logos per Month** | Bar chart | Enterprise sales story — new companies adopting. |
| 10 | **Seats by Org Size Tier** (1-100, 100-1K, 1K-10K, 10K+) | 100% stacked area | SMB vs enterprise growth mix. |
| 11 | **Activations by SKU** | Grouped bar | Which product tier is driving new users? |
| 12 | **Activations by Channel** (organic / marketing) | Stacked bar | GTM attribution — where do users come from? |
| 13 | **Time-to-First-Use After Seat Assignment** | Histogram (<1d, 1-7d, 7-30d, 30d+) | Activation velocity. Slow = onboarding problem. |
| 14 | **Geo Distribution of Seats** | Horizontal bar or choropleth | Regional penetration and whitespace. |

---

## PAGE 3 — REVENUE & MONETIZATION

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 15 | **Revenue by Plan Type** | Stacked area (Individual / Business / Enterprise) | Where do the dollars come from? |
| 16 | **ARPU by Plan** | Grouped bar chart (monthly) | Volume growth vs pricing power. |
| 17 | **Revenue Growth Rate (MoM & YoY)** | Dual-axis line chart | Momentum + scale trajectory. |
| 18 | **Net Revenue Retention (NRR)** | Line chart with 100% reference line | >100% = existing customers spend more. SaaS gold standard. |
| 19 | **Revenue per Org Cohort** (by sign-up quarter) | Cohort lines (each cohort = one line) | Do customers ramp spend? Flat = no expansion. |
| 20 | **Metered / Overage Revenue vs Base** | Stacked bar | Is usage-based pricing working? |
| 21 | **Seat Expansion Within Existing Orgs** | Bar chart (avg seats added/org/month) | Land-and-expand story. |
| 22 | **Upsell Conversion Rate** (plan upgrades / downgrades) | Funnel or grouped bar | From brain dump. Movement between plan tiers. |
| 23 | **Time in Trial State** | Histogram (days until conversion or drop) | Conversion velocity. How long do trials linger? |
| 24 | **LTV by SKU** | Grouped bar chart | Lifetime value per plan — which SKU is most valuable? |

---

## PAGE 4 — UTILIZATION & ENGAGEMENT DEPTH

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 25 | **DAU / MAU Ratio (Stickiness)** | Line chart, trendline total | >30% is strong for dev tools. |
| 26 | **WAU / MAU Ratio** | Line chart, trendline total | Operational cadence stickiness metric. |
| 27 | **DAU/MAU Cohorted View** | Small multiples (one line per cohort) | Do newer cohorts engage more? |
| 28 | **WAU/MAU Cohorted View** | Small multiples (one line per cohort) | Same as above, weekly cadence. |
| 29 | **Completions Acceptance Rate** | Line chart (weekly smoothed) | Core value metric. Benchmark ~30%. |
| 30 | **Suggestions Shown per Active User per Day** | Line chart | How embedded is Copilot in workflow? |
| 31 | **Accepted Lines of Code per User per Day** | Line chart | "Copilot writes X% of code" narrative. |
| 32 | **Chat Turns per User per Day** | Line chart | Chat depth — real conversations or one-and-done? |
| 33 | **Heavy / Medium / Light User Distribution** | 100% stacked area (tiers by actions/day) | Broad-based or power-user driven? |
| 34 | **Active Days per User per Month** | Histogram (1-5d, 6-10d, 11-15d, 16-20d, 20+d) | What does "active" really look like? |
| 35 | **Cohorted View of Requests** | Cohort lines (requests per user over time) | From brain dump. Usage depth by cohort. |
| 36 | **Cohorted View of Tokens** | Cohort lines (tokens per user over time) | From brain dump. Cost-relevant usage by cohort. |
| 37 | **2×2 Bubble: Seat Utilization × Usage Intensity** | Scatter/bubble (circle = total seats per org) | From brain dump. Exec-favorite strategic view. |

---

## PAGE 5 — PRODUCT SURFACE & FEATURE ADOPTION

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 38 | **MAU by Product Surface** (Completions, Chat, CLI, PR Summaries, etc.) | Grouped bar or small multiples | Which features have traction? |
| 39 | **Surface Adoption Over Time** | Stacked area (each surface) | Trajectory of newer surfaces. |
| 40 | **MAU by SKU Stacked Bar YTD** | Stacked bar chart | From brain dump. SKU-level MAU breakdown. |
| 41 | **Multi-Surface Users (1, 2, 3+ surfaces)** | 100% stacked area over time | Multi-surface = stickier. Platform lock-in metric. |
| 42 | **Chat vs Completions Mix Over Time** | 100% stacked area | Conversational AI shift — cannibalizing or complementing? |
| 43 | **IDE Distribution** (VS Code, JetBrains, Neovim, Visual Studio, Xcode) | Horizontal bar or treemap | Market penetration by IDE. |
| 44 | **Language Distribution** (top 10 by completions) | Horizontal bar | Where does Copilot add most value? |
| 45 | **Feature Funnel: Shown → Accepted → Retained (Code Survival)** | Funnel chart | End-to-end value. Acceptance without survival = low quality. |

---

## PAGE 6 — COST & UNIT ECONOMICS

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 46 | **Total COGS Over Time** | Stacked area (compute, inference, egress) | Cost structure evolution. |
| 47 | **COGS per Seat per Month** | Line chart with target/budget reference line | Unit-economics north star. Must trend down. |
| 48 | **COGS per Active User vs per Assigned Seat** | Dual line chart | Inactive seats subsidize heavy users? |
| 49 | **Gross Margin by SKU** | Grouped bar chart | Which SKUs are profitable? From brain dump. |
| 50 | **Cost per Completion / Cost per Chat Turn** | Dual line chart | Granular unit cost. Should decline over time. |
| 51 | **COGS by Model** (GPT-4, GPT-3.5, Claude, etc.) | Stacked bar | Model mix and routing impact on cost. |
| 52 | **Cost per User by Platform Type** (CLI / CCA / CCR / IDE) | Grouped bar | From brain dump. Platform-level cost comparison. |
| 53 | **WoW Cost Waterfall** | Waterfall chart | From brain dump. Week-over-week cost deltas. |
| 54 | **Inference Cost Index** (cost per 1K tokens) | Line chart | Model cost deflation flowing through? |
| 55 | **Cost-to-Serve by User Percentile** (P50-P99) | Bar chart | Power-law distribution. Top 1% often = 20%+ of cost. |
| 56 | **LTV / CAC Ratio by SKU** | Grouped bar | Combined with LTV from revenue page. Unit economics health. |

---

## PAGE 7 — RETENTION & HEALTH

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 57 | **Monthly Seat Churn Rate** | Line chart with trend | Target < 3% monthly. |
| 58 | **Retention Cohort Heatmap** | Heatmap (cohort month × months-since-start) | Gold-standard retention. Are newer cohorts better? |
| 59 | **Resurrection Rate** | Line chart | Users who churned then returned. Product pull metric. |
| 60 | **Days-to-Churn Distribution** | Histogram | When do users leave? Month 1 = onboarding problem. |
| 61 | **NPS / CSAT Trend** | Line chart with benchmark | Qualitative health check. |
| 62 | **Code Survival Rate Over Time** | Line chart | From brain dump. AI-generated code still in codebase after N days. |

---

## PAGE 8 — SALES PIPELINE (from brain dump)

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 63 | **Pipeline by Opportunity Size** | Horizontal bar or funnel | Total pipeline value segmented by deal size. |
| 64 | **Closed / Won Revenue** | Bar chart (monthly) | Bookings velocity. |
| 65 | **Quota Attainment** | Gauge or bullet chart (actual vs quota) | Sales team performance. |
| 66 | **Win Rate Over Time** | Line chart | Conversion effectiveness trend. |

---

## PAGE 9 — EXPERIMENTS (from brain dump)

| # | Chart | Viz Type | Notes |
|---|-------|----------|-------|
| 67 | **Active Experiments Table** | Sortable table with key metrics columns | List of running experiments, status, primary metric, lift. |
| 68 | **Experiment NPV Tracker** | Bar chart (expected NPV per experiment) | Prioritization view — which experiments have biggest impact? |

---

## TOTAL: 68 charts across 9 pages

### Recommended Priority Order for Build:
1. Page 1 (Exec Summary) — immediate impact
2. Page 6 (Cost & Unit Economics) — you already have COGS data pipelines
3. Page 4 (Utilization) — leverages daily_aggregations_v3
4. Page 2 (User Growth) — leverages daily_aggregations_v3
5. Page 5 (Product Surface) — leverages daily_aggregations_v3
6. Page 3 (Revenue) — leverages copilot_revenue_daily
7. Page 7 (Retention) — requires cohort computation
8. Page 8 (Sales) — likely needs CRM data source
9. Page 9 (Experiments) — likely needs experiment tracking system
