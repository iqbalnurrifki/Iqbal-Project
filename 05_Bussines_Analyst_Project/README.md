# 📊 Market Analysis & Strategy for Government Lighting Segment  
_Data-Driven Market Intelligence & Strategic Insights for the Public Sector (B2G)_

---

## 🔗 Project Overview  
This project delivers a comprehensive **market intelligence analysis** for the Government Lighting (PJU) segment by utilizing **web scraping**, **data analytics**, and **strategic consulting frameworks**.  

The goal is to provide a clear and actionable understanding of:

- the competitive landscape on the Indonesian e-Catalog platform (LKPP),  
- pricing patterns and product availability,  
- regional purchasing behavior,  
- and strategic opportunities for business expansion.  

This project supports data-driven decision-making for companies targeting the public sector, particularly those seeking stronger positioning in the **street lighting solution market**.

---

## 🎯 Objectives  
- Identify the market structure and product distribution for PJU on e-Catalog LKPP.  
- Analyze price ranges, wattage specifications, supplier competitiveness, and sales volume.  
- Develop a **Market Mapping Model** using *Purchasing Power × Transaction Power*.  
- Recommend strategic actions to sharpen market penetration and improve competitiveness.  
- Provide supporting insights for business development and policy alignment.

---

## 📈 Key Insights  
- **Product category (barang)** dominates the market, while **service packages** generate higher revenue per transaction.  
- Cities such as **Surabaya, Malang, Makassar** emerge as high-potential regions in the market mapping quadrant.  
- The majority of products fall into the **0–10 million IDR price range**, indicating a mass-market sweet spot.  
- Major brands (e.g., Philips) strongly dominate the 90W segment, leaving opportunities in the **30–60W range**.  
- Several regions have a high APBD (regional budget) but low transaction activity → strong market activation potential.

---

## 🧭 Methodology  

### **1. Data Collection (Web Scraping)**  
Data was collected from the PJU category on Indonesia’s LKPP e-Catalog, extracting:

- product names  
- wattage  
- supplier information  
- prices  
- product categories  
- total units sold  
- vendor locations  
- product URLs  

**Tools:** Selenium, BeautifulSoup, Pandas.

---

### **2. Data Cleaning & Preprocessing**  
Steps include:

- normalizing wattage formats  
- standardizing price data  
- removing duplicated/non-PJU items  
- handling missing data  
- creating a data dictionary  

---

### **3. Exploratory Data Analysis (EDA)**  
The EDA answers critical business questions such as:

- Which wattage and product types are most purchased?  
- Which cities show the highest transaction volume?  
- How do price ranges differ between suppliers?  
- How competitive are major brands?  
- What categories dominate sales (goods/services/packages)?  
- How does regional demand vary across Indonesia?

Visualization techniques: donut charts, bar charts, treemaps, and line trends.

---

### **4. Market Mapping Framework**  

A two-dimensional segmentation is used:

#### **Purchasing Power Indicators**  
- Regional APBD (budget) allocation  
- Public lighting expenditure  
- Smart city readiness  
- Minimum technical spec requirements  

#### **Transaction Power Indicators**  
- e-Catalog PJU transaction volume  
- Buyer loyalty  
- SLA & vendor service quality  
- Availability of supporting products  

Resulting in four strategic segments:

| Segment        | Characteristics                              | Recommended Strategy                                 |
|----------------|-----------------------------------------------|-------------------------------------------------------|
| **Growth**     | High budget, high transactions                | IoT integration, smart lighting, long-term partnership |
| **Maintain**   | High budget, low transactions                 | Guidance on e-Catalog usage, technical workshops       |
| **Harvest**    | Low budget, high transactions                 | Bundling offers, strong SLA, cost-efficient solutions |
| **Develop**    | Low budget, low transactions                  | Education, CSR pilots, entry-level lighting solutions |

---

## 🧩 Strategy Recommendations  
- Adopt **region-specific go-to-market strategies** instead of a one-size-fits-all approach.  
- Offer **bundled product + maintenance service packages** to increase contract value.  
- Prioritize **smart lighting solutions** in high-growth regions.  
- Provide **technical assistance (RUP, specification drafting, e-Catalog training)** to maintain high-budget but low-transaction cities.  
- Deliver **affordable product lines** for developing regions.  
- Strengthen **brand positioning** in competitive wattage segments.

---

## 🧰 Tools & Technologies  

| Category           | Tools / Platforms                         |
|-------------------|---------------------------------------------|
| Data Scraping     | Python (Selenium, BeautifulSoup)            |
| Data Processing   | Pandas, NumPy                               |
| Visualization     | Matplotlib, Seaborn                         |
| Market Mapping    | Excel, Google Sheets                        |
| Documentation     | PDF, PowerPoint                             |

---

## 📄 Documentation
Full report are available in:  
📘 [BussinesAnalyst_Project_Report.pdf](./Docs/Report_Project.pdf)

---

## 🧑‍💻 Author
**M. Iqbal Nurrifki**  
📧 [miqbalnurrifki@gmail.com]