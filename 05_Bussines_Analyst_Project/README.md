# 📊 Market Analysis & Strategy for Government Lighting Segment  
_Data-Driven Business Analysis for Government PJU Market (B2G)_

---

## 🔗 Project Overview  
Proyek ini menganalisis pasar **Penerangan Jalan Umum (PJU)** pada segmen pemerintahan (B2G) menggunakan pendekatan **data mining, market intelligence, dan strategi bisnis**.

Melalui kombinasi **web scraping**, **exploratory analysis**, dan **market mapping**, proyek ini menyajikan gambaran komprehensif mengenai:

- kompetisi dan harga di e-Catalog LKPP,  
- potensi permintaan tiap wilayah,  
- distribusi kategori produk (barang / jasa / paket),  
- dan rekomendasi strategi untuk penetrasi pasar yang efektif bagi perusahaan.  

Analisis ini membantu tim bisnis mengambil keputusan strategis seperti positioning harga, segmentasi wilayah, dan prioritas market entry.

---

## 🎯 Objectives  
- Mengidentifikasi struktur pasar PJU di e-Catalog LKPP.  
- Membandingkan price range, watt, kategori produk, dan performa vendor.  
- Membuat *Market Mapping* berbasis **Purchasing Power × Transaction Power**.  
- Menyusun rekomendasi strategi pasar bagi perusahaan.  
- Memberikan insight berbasis data untuk mendukung keputusan bisnis.

---

## 📈 Key Insights  
- **Kategori barang** mendominasi transaksi, namun **jasa pemeliharaan** memiliki nilai jual tinggi per item.  
- Wilayah seperti **Surabaya, Malang, Makassar** muncul sebagai segmen prioritas dalam market mapping.  
- Produk dengan rentang harga **0–10 juta** menyumbang persentase terbesar dari transaksi.  
- **Philips** kuat di watt **90W**, sehingga terdapat peluang pada segmentasi watt 30–60W.  
- Beberapa daerah memiliki APBD besar tetapi transaksi rendah → peluang edukasi dan aktivasi pasar.

---

## 📊 Dashboard & Analytics  
_(Opsional — jika nanti ditambahkan dashboard Looker Studio / Power BI)_  
**Coming Soon / In Development**

---

## 🧭 Methodology  

### **1. Data Collection (Scraping)**  
Scraping dilakukan pada halaman produk PJU di e-Catalog LKPP, mencakup:  

- nama produk  
- penyedia  
- watt  
- harga  
- kategori (barang / jasa / paket)  
- lokasi vendor  
- total terjual  
- link detail produk  

**Tools:** `Selenium`, `BeautifulSoup`, `Pandas`.

---

### **2. Data Cleaning & Preprocessing**  
- Standarisasi watt dan kategori  
- Normalisasi format harga  
- Penanganan missing values  
- Filtering produk non-relevan  
- Penyusunan data dictionary  

---

### **3. Exploratory Data Analysis (EDA)**  
EDA dilakukan untuk menjawab pertanyaan bisnis seperti:  

- Produk / watt mana yang paling sering dibeli?  
- Kota mana yang paling aktif bertransaksi?  
- Bagaimana gap harga antar vendor?  
- Bagaimana peta persaingan antar merek?  
- Kategori apa yang paling dominan?  
- Bagaimana distribusi permintaan berdasarkan wilayah?

Visualisasi yang digunakan: bar chart, donut chart, treemap, heatmap.

---

### **4. Market Mapping Framework**  
Pemetaan dilakukan menggunakan dua sumbu:

#### **Purchasing Power**  
- APBD  
- Anggaran penerangan  
- Smart city readiness  
- Minimum technical specification  

#### **Transaction Power**  
- Transaksi PJU e-Catalog  
- Loyalitas pembeli  
- Kualitas layanan  
- SLA penyedia  

Hasilnya, empat segmen pasar terbentuk:

| Segment      | Karakteristik                           | Strategi                                         |
|--------------|------------------------------------------|--------------------------------------------------|
| **Growth**   | Anggaran besar, transaksi tinggi         | IoT, showcase, partnership                       |
| **Maintain** | Anggaran besar, transaksi rendah         | Pelatihan e-Catalog, technical guidance          |
| **Harvest**  | Transaksi tinggi, anggaran rendah        | Bundling, SLA kuat, efisiensi                    |
| **Develop**  | Anggaran rendah, transaksi rendah        | Edukasi, CSR, entry-level products               |

---

## 🧩 Strategy Recommendations  
- **Go-to-market berbasis segmentasi wilayah**, bukan pendekatan generik.  
- **Bundling produk + jasa pemeliharaan** untuk meningkatkan revenue.  
- **Smart lighting adoption** untuk wilayah pada segmen growth.  
- **Pendampingan RUP dan bimbingan teknis** untuk segmen maintain.  
- **Produk low-cost** untuk daerah develop.  
- **Brand positioning** untuk kompetisi watt dominan dan gap harga.

---

## 🧰 Tools & Technologies  

| Category           | Tools / Platforms                 |
|-------------------|-----------------------------------|
| Data Scraping     | Python (Selenium, BeautifulSoup)  |
| Data Processing   | Pandas, NumPy                     |
| Visualization     | Matplotlib, Seaborn               |
| Market Mapping    | Excel / Google Sheets             |
| Documentation     | PDF, PowerPoint                   |

---

## 📄 Documentation
Full report are available in:  
📘 [BussinesAnalyst_Project_Report.pdf](./Docs/Report_Project.pdf)

---

## 🧑‍💻 Author
**M. Iqbal Nurrifki**  
📧 [miqbalnurrifki@gmail.com]