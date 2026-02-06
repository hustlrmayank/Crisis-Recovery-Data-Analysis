
# 📦 QuickBite Express – Crisis Recovery Data Analysis

## 📌 Project Overview

QuickBite Express is a Bengaluru-based online food delivery startup founded in 2020.
In **June 2025**, the company faced a severe business crisis due to:

* Viral food safety incidents at partner restaurants
* A week-long delivery outage during monsoon season
* Aggressive competitor campaigns during downtime

This resulted in:

* Sharp drop in daily orders
* High customer churn
* Increased cancellations
* Loss of restaurant partners
* Decline in customer ratings and trust

**Objective:**
Use **SQL + Python (EDA)** to analyze business data and provide **actionable insights for crisis recovery**.

---

## 🛠 Tech Stack

* **Database:** MySQL
* **Querying:** SQL
* **Analysis:** Python (pandas, matplotlib)
* **Environment:** VS Code + Jupyter Notebook

---

## 🗂 Project Structure

```text
QuickBite_Recovery_Project/
│
├── sql_queries/
│   ├── 01_base_orders.sql
│   ├── 02_customer_summary.sql
│   ├── 03_daily_order_trends.sql
│   ├── 04_delivery_performance_summary.sql
│   ├── 05_campaign_base.sql
│   ├── 06_restaurant_value_summary.sql
│   ├── 07_ratings_summary.sql
│
├── notebooks/
│   ├── 01_customer_segments.ipynb
│   ├── 02_order_patterns.ipynb
│   ├── 03_delivery_analysis.ipynb
│   ├── 04_campaigns.ipynb
│   ├── 05_restaurants.ipynb
│   ├── 06_sentiment.ipynb
│
├── README.md
```

---

## 🧠 Business Phases Defined

To analyze behavior accurately, data was divided into three phases:

| Phase      | Date Range          |
| ---------- | ------------------- |
| Pre-Crisis | Before June 1, 2025 |
| Crisis     | June 1–30, 2025     |
| Recovery   | After June 30, 2025 |

This phase logic is consistently applied across all analyses.

---

## 📊 Key Analysis Areas & Insights

---

### 1️⃣ Customer Segmentation

**Goal:** Identify recoverable vs lost customers.

**Approach:**

* Segmented customers based on order activity across phases:

  * Loyal
  * At Risk
  * Lost
  * New

**Key Insights:**

* Large portion of customers churned during crisis
* Loyal users showed partial recovery
* Paid acquisition channels suffered highest churn

**Impact:**

* Enabled targeted win-back and retention campaigns

---

### 2️⃣ Order Pattern Analysis

**Goal:** Understand demand and revenue shock.

**Metrics Analyzed:**

* Daily orders
* Daily revenue
* Cancellation rate

**Key Insights:**

* Sharp order drop during crisis
* Cancellations peaked during delivery outages
* Recovery slope was gradual, not immediate

---

### 3️⃣ Delivery Performance & SLA Analysis

**Goal:** Identify operational bottlenecks.

**Metrics:**

* Actual vs expected delivery time
* SLA breach rate
* Delay vs cancellation correlation

**Key Insights:**

* SLA breaches surged during crisis
* Strong correlation between delivery delays and cancellations
* Recovery improved but did not fully normalize SLA

---

### 4️⃣ Campaign Opportunity Analysis

**Goal:** Design recovery marketing strategy.

**Analysis Dimensions:**

* City-wise impact
* Acquisition-channel performance

**Key Insights:**

* Certain cities experienced >50% demand drop
* Paid channels had poor post-crisis retention
* Organic users showed better recovery

**Recommendations:**

* High-incentive win-back campaigns in worst-hit cities
* Trust-based messaging over discounts for organic users

---

### 5️⃣ Restaurant Partnership Evaluation

**Goal:** Identify high-value vs risky partners.

**Metrics:**

* Revenue contribution
* Cancellation rate
* Repeat customer rate

**Classification:**

* High Value
* Risky
* Low Impact

**Key Insights:**

* High-value restaurants remained active during crisis
* Risky restaurants had high cancellations and low repeat rate
* Several partners exited during crisis period

---

### 6️⃣ Feedback & Sentiment Analysis

**Goal:** Measure customer trust recovery.

**Metrics:**

* Average rating
* Sentiment score
* Negative review rate

**Key Insights:**

* Ratings and sentiment dipped sharply during crisis
* Sentiment recovery lagged behind operational recovery
* Low ratings strongly linked to delivery delays

---

## 🎯 Final Business Recommendations

* Prioritize SLA improvement before aggressive marketing
* Protect and incentivize high-value restaurant partners
* Use targeted campaigns instead of blanket discounts
* Focus recovery efforts on cities and channels with highest ROI
* Address operational issues to rebuild long-term trust

---

## 🚀 What This Project Demonstrates

* Real-world **business problem solving**
* Strong **SQL + Python integration**
* End-to-end **data storytelling**
* Crisis impact analysis with actionable insights
* Industry-style project structuring



Just tell me 👌

