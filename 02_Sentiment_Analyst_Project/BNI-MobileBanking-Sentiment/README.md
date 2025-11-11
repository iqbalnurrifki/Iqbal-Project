# 💬 Sentiment Analysis of BNI Mobile Banking & WONDR Apps

## 📌 Overview
This project focuses on analyzing user sentiment toward two BNI applications — **BNI Mobile Banking** and **BNI WONDR App** — based on PlayStore reviews.  
The goal is to understand public perception, identify key pain points, and evaluate customer satisfaction using a **lexicon-based sentiment analysis approach**.

---

## 🧭 Objectives
- To collect and preprocess PlayStore reviews of BNI Mobile Banking and WONDR apps.
- To perform **sentiment labeling** automatically using a **lexicon-based dictionary**.
- To compare sentiment tendencies and main discussion topics between both apps.

---

## 📊 Project Workflow
1. **Data Collection**
   - Scraped reviews directly from **Google PlayStore** using Python (`google-play-scraper` library).
   - Collected metadata: app name, review text, rating, and submission date.

2. **Data Cleaning & Preprocessing**
   - Removed punctuation, emojis, and stopwords.
   - Tokenized and normalized the text (lowercase, stemming).
   - Filtered non-Indonesian text to maintain dataset consistency.

3. **Sentiment Labeling (Lexicon-Based)**
   - Used an **Indonesian sentiment lexicon** (positive–negative word dictionary).
   - Calculated sentiment scores for each review:
     - Positive if total score > 0  
     - Negative if total score < 0  
   - Compared accuracy with sample manual labeling for validation.

4. **Exploratory Analysis**
   - Visualized sentiment distribution between both apps.
   - Identified top positive and negative keywords from users’ feedback.
   - Highlighted recurring issues in negative reviews (e.g., login error, bugs, performance).


---

## 🧰 Tools & Libraries
- **Python**: `pandas`, `numpy`, `re`, `google-play-scraper`
- **Text Processing**: `nltk`, `Sastrawi`, `scikit-learn`
- **Visualization**: `matplotlib`, `seaborn`, `wordcloud`

---

### 📊 Key Findings
#### 🟣 Wondr App
- Positive: **13,746**
- Negative: **2,818**
**Bigram Highlights**
- 🟢 Positive: “Transaksi mudah”, “Cepat mudah”  
- 🔴 Negative: “Verifikasi wajah”, “Susah login”  
**Insight:**  
Mayoritas pengguna memberikan ulasan positif terkait kemudahan dan kecepatan transaksi. Namun, keluhan utama berasal dari fitur verifikasi wajah yang tidak responsif serta kesulitan login, menandakan adanya isu pada pengalaman pengguna (UX).

---

#### 🔵 BNI Mobile Banking App
- Positive: **4,733**
- Negative: **1,877**

**Bigram Highlights**
- 🟢 Positive: “Transaksi mudah”  
- 🔴 Negative: “Force close”, “Susah login”  

**Insight:**  
Sebagian besar pengguna menilai positif kemudahan transaksi, tetapi masih banyak laporan mengenai aplikasi yang sering tertutup sendiri (*force close*) dan kesulitan login, yang menunjukkan perlunya perbaikan stabilitas sistem.

---
### 🧠 Conclusion
Secara keseluruhan, kedua aplikasi BNI menunjukkan persepsi positif dari pengguna terutama pada aspek kemudahan transaksi. Meski demikian, masalah teknis seperti **login error** dan **bug sistem** menjadi perhatian utama yang perlu diperbaiki untuk meningkatkan pengalaman dan kepuasan pengguna.

---

## 🔗 References
- Lexicon source: Internal sentiment lexicon file stored in  
  **`BNI-MobileBanking-Sentiment/Kamus Lexicon/`**  
  (custom lexicon based on Indonesian Sentiment Lexicon by Koto et al., 2021)
- Tools: [google-play-scraper](https://pypi.org/project/google-play-scraper/)

---

## 🧑‍💻 Author
**M. Iqbal Nurrifki**  
📧 [miqbalnurrifki@gmail.com]


