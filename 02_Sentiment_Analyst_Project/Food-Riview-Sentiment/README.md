# 🍪 Sentiment Analysis on Snack Reviews

## 📘 Overview
This project aims to analyze public sentiment toward snack products based on user reviews collected from e-commerce and online platforms.  
The analysis was performed using **Transformer-based sentiment labeling (RoBERTa)** and traditional **machine learning classifiers (Naive Bayes, SVM, and Voting Classifier)** to evaluate model performance under both **binary (2-label)** and **multiclass (3-label)** sentiment schemes.

---

## 🎯 Objectives
- Conduct sentiment classification using a **pre-trained Transformer model** from Hugging Face.  
- Compare **2-label (Positive–Negative)** and **3-label (Positive–Neutral–Negative)** schemes.  
- Evaluate model performance using multiple metrics (Accuracy, Precision, Recall, F1-Score).  
- Generate **wordclouds (unigram & bigram)** to interpret dominant keywords and customer insights.  

---

## 🧠 Labeling Method
Sentiment labeling was performed automatically using a **pretrained Transformer model**:  
**`cardiffnlp/twitter-roberta-base-sentiment`**, a RoBERTa-based model trained on large-scale tweet data.  

- Model outputs probability scores for **Positive**, **Neutral**, and **Negative**.  
- For the **2-label** experiment:
  - `Neutral` was merged into `Positive` (resulting in binary labels: Positive–Negative).  
- For the **3-label** experiment:
  - All original categories were retained.  

Each review was assigned the sentiment label corresponding to the highest probability score from the model.

---

## ⚙️ Data Preprocessing
Before feeding the data to models, text cleaning and preprocessing were applied:
- Removal of punctuation, special characters, and emojis  
- Case folding (lowercasing)  
- Tokenization  
- Stopword removal  
- Stemming  
- TF–IDF vectorization for feature representation  

---

## 🧩 Machine Learning Models
After obtaining labeled data, several machine learning models were trained for comparison:
- **Naive Bayes** — baseline model for fast and simple text classification  
- **Support Vector Machine (SVM)** — robust model for high-dimensional text data  
- **Voting Classifier (Naive Bayes + SVM)** — ensemble method to combine model strengths  

Each model was tested on both **binary (2-label)** and **multiclass (3-label)** setups.

---

## 🧰 Tools & Libraries
| Category | Tools / Libraries |
|-----------|------------------|
| **Programming Language** | Python |
| **Data Handling** | pandas, numpy |
| **Text Preprocessing** | re, nltk, Sastrawi |
| **Transformer Model** | Hugging Face Transformers (`cardiffnlp/twitter-roberta-base-sentiment`) |
| **Machine Learning** | scikit-learn (Naive Bayes, SVM, VotingClassifier) |
| **Deep Learning Backend** | TensorFlow |
| **Visualization** | matplotlib, seaborn, wordcloud |

---

## 📊 Results Summary

### 🔹 Binary Sentiment Classification (Positive vs Negative)
- **Positive reviews:** 4,027 (77.1%)  
- **Negative reviews:** 1,198 (22.9%)  
- **Best model:** Ensemble Voting Classifier  
  - Training Accuracy: **88.71%**  
  - Testing Accuracy: **86.79%**

**Insights**
- Positive reviews emphasize *good taste*, *reasonable price*, and *freshness* (`great flavor`, `highly recommend`).  
- Negative reviews point to *stale taste*, *broken packaging*, and *refund issues* (`waste money`, `bad batch`).  
- Model performs well on Positive class (F1 = 0.92) but struggles slightly on Negative class (F1 = 0.66) due to class imbalance.

---

### 🔹 Multiclass Sentiment Classification (Positive, Neutral, Negative)
- **Positive:** 3,260 (62.4%)  
- **Neutral:** 767 (14.7%)  
- **Negative:** 1,198 (22.9%)  
- **Best model:** Ensemble Voting Classifier  
  - Training Accuracy: **86.72%**  
  - Testing Accuracy: **81.91%**

**Insights**
- Positive reviews highlight *taste*, *freshness*, and *affordable price* (`really good`, `great price`).  
- Neutral reviews contain descriptive comments without strong emotion (`great snack`, `good price`).  
- Negative reviews mention *expired products*, *bad taste*, and *wasted money*.  
- Model shows strong performance on Positive class (F1 = 0.90), moderate on Negative (F1 = 0.75), and weakest on Neutral (F1 = 0.50).  

---

### 🧩 Key Takeaways
- Transformer-based labeling using **RoBERTa** provides consistent sentiment distribution and reliable labeling automation.  
- The **Voting Classifier** achieved the highest accuracy across both experiments.  
- Class imbalance remains a challenge, especially for the Negative and Neutral classes.  
- Bigram WordClouds offer clearer contextual insight (e.g., “great price” vs “waste money”).  

---

## ⚠️ Data Misinformation
Some reviews contain inconsistencies between their text and numeric rating (e.g., positive text but low rating).  
These mismatches can introduce bias if numeric ratings alone are used as ground truth.  
A separate dataset of misinformed entries is documented for further evaluation.  

---

## 📄 Documentation
For full interpretation, performance tables, and detailed discussion, see:  
📘 [Sentiment_Snack_Review_Analysis.pdf](./Docs/hasil_analisis_sentiment_snack_reviews.pdf)

Or access it via Google Drive:  
🔗 [View Report](https://drive.google.com/file/d/1h2xEG3KpWD4k6xRAES6Un3tnuRfcMM3P/view?usp=sharing)

---

## 🔗 References
- Pretrained Model: [`cardiffnlp/twitter-roberta-base-sentiment`](https://huggingface.co/cardiffnlp/twitter-roberta-base-sentiment)  
- Machine Learning: scikit-learn, TensorFlow  
- Visualization: matplotlib, seaborn, wordcloud  

---

## 👤 Author
**Muhammad Iqbal N**  
Data Enthusiast | Machine Learning & NLP  
📧 [iqbal.email@gmail.com](mailto:iqbal.email@gmail.com)  
🔗 [LinkedIn](#)