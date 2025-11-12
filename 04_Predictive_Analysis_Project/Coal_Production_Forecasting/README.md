# ⚙️ Comparative Analysis of SARIMA and LSTM for Coal Production Forecasting
*A Study on Forecasting the U.S. Coal Production Trend (2001–2024)*

---

## 📘 Overview
This project compares two forecasting approaches — **SARIMA** (Seasonal AutoRegressive Integrated Moving Average) and **LSTM** (Long Short-Term Memory Neural Network) — to predict **monthly coal production** in the United States.  
The objective is to evaluate which model provides better accuracy and adaptability to both linear and nonlinear temporal patterns in energy production data.

---

## 🎯 Objectives
- To model and forecast U.S. coal production using time-series data.  
- To compare the performance of **SARIMA (statistical model)** and **LSTM (deep learning model)**.  
- To analyze how each model responds to **seasonality**, **trend**, and **random fluctuations**.  
- To determine the most suitable model for medium- and long-term energy production forecasting.

---

## 📊 Dataset Description
- **Source:** U.S. Energy Information Administration (EIA)  
- **Period:** January 1973 – December 2024  
- **Frequency:** Monthly  
- **Feature Used:** Total U.S. Coal Production (tons)  

The data was preprocessed to handle missing values, stationarity adjustments, and scaling for neural network training.

---

## ⚙️ Methodology

### 🔹 1. SARIMA Model
SARIMA extends ARIMA by incorporating seasonal terms.  
The model structure is expressed as **SARIMA(p, d, q)(P, D, Q, s)**:
- **p:** autoregressive order  
- **d:** differencing order  
- **q:** moving average order  
- **P, D, Q:** seasonal components  
- **s:** seasonal period (12 for monthly data)

Model selection was performed using **ACF-PACF plots**, **AIC minimization**, and **diagnostic checks** on residuals.

---

### 🔹 2. LSTM Model
LSTM, a type of recurrent neural network (RNN), captures long-term dependencies and nonlinear relationships.

- **Sequence Length:** 36 (3 years of monthly observations)  
- **Hidden Size:** 256  
- **Number of Layers:** 2  
- **Dropout Rate:** 0.1  
- **Learning Rate:** 0.0005  
- **Optimizer:** RMSprop  
- **Loss Function:** Mean Squared Error (MSE)  
- **Epochs:** 300  
- **Batch Size:** 32  

The input data was normalized using `StandardScaler` and reshaped into supervised learning format before feeding into the LSTM model.

---

## 🧮 Evaluation Metrics
The models were evaluated using:
- **MAE (Mean Absolute Error)**  
- **RMSE (Root Mean Squared Error)**  
- **MAPE (Mean Absolute Percentage Error)**   

---

## 📈 Results & Discussion

| Model | RMSE | MAPE | Observation |
|--------|------|------|--------------|
| **SARIMA(0,1,4)(5,1,0)^12** | 7432.15 | 13.71% | Captures seasonality but struggles with nonlinear shifts |
| **LSTM (2 layers, 32 units)** | **1288.5** | **2.48%** | Adapts better to nonlinear and long-term patterns |

### 🔍 Key Insights
- **LSTM outperforms SARIMA** across all evaluation metrics, demonstrating superior ability to capture nonlinear variations in production trends.  
- **SARIMA** performs well for short-term predictions and seasonal fluctuations but loses accuracy over extended horizons.  
- **Visual comparison** of forecasts shows that LSTM produces smoother and more realistic trend continuation.  
- LSTM’s performance is enhanced by data normalization and sequence-windowing techniques.

---

## 📄 Documentation
Full report and analysis are available in:  
📘 [Coal_Forecasting_Report.pdf](./Docs/Presentasi_Coal_Forecasting.pdf)

---

## 🧑‍💻 Author
**M. Iqbal Nurrifki**  
📧 [miqbalnurrifki@gmail.com]



