# 🔥 LSTM Hyperparameter Optimization using PSO, Genetic Algorithm, and Grid Search
*A Comparative Study for Coal Production Forecasting*

---

## 📘 Overview
This project aims to optimize the performance of **Long Short-Term Memory (LSTM)** models in forecasting coal production by comparing three different hyperparameter optimization techniques: **Particle Swarm Optimization (PSO)**, **Genetic Algorithm (GA)**, and **Grid Search**.  
The study evaluates how each method affects model accuracy, convergence, and computational efficiency in predicting coal production trends using historical data from the United States.

---

## 🎯 Objectives
- Develop an LSTM model for time-series forecasting of coal production.  
- Compare the optimization efficiency of **PSO**, **GA**, and **Grid Search**.  
- Analyze how each optimization method influences **predictive accuracy** and **training convergence**.  
- Identify the most effective hyperparameter optimization approach for deep learning models in energy forecasting.

---

## ⚙️ Methodology

### 1. Data Description
- **Dataset Source:** U.S. Energy Information Administration (EIA)  
- **Time Period:** 2001–2024  
- **Frequency:** Monthly  
- **Features Used:** Date (time index) and coal production quantity  
- **Preprocessing:**  
  - Normalized with `StandardScaler`  
  - Restructured into sequences using **window size = 12 months** for supervised time-series input  

---

### 2. LSTM Model Structure
- **Input Window:** 12, 24, 36 timesteps (1 year of data)  
- **Hidden Layers:** 1–2 (tuned via optimization)  
- **Hidden Units:** Up to 64  
- **Activation:** tanh  
- **Dropout:** 0.3 (optimal)  
- **Optimizer:** Adam  
- **Epochs:** 100  
- **Loss Function:** Mean Squared Error (MSE)

---

### 3. Hyperparameter Optimization Methods

| Method | Mechanism | Key Traits |
|--------|------------|------------|
| **Grid Search** | Exhaustive parameter evaluation | Deterministic but slow |
| **PSO (Particle Swarm Optimization)** | Swarm-based stochastic search inspired by social behavior | Fast convergence, strong global search |
| **Genetic Algorithm (GA)** | Evolutionary process using selection, crossover, mutation | Good balance between exploration and exploitation |

Parameters tuned by each optimization method:
- Learning rate  
- Number of hidden units  
- Batch size  
- Dropout rate  
- Optimizer type  

---

### 4. Evaluation Metrics
Performance was assessed using the following metrics:
- **RMSE (Root Mean Squared Error)**  
- **MAPE (Mean Absolute Percentage Error)**  

---

## 📊 Results & Discussion

The comparative experiments reveal that the **PSO-optimized LSTM model** consistently outperforms both **Grid Search** and **Genetic Algorithm (GA)** across all tested sequence lengths in terms of accuracy, generalization, and computational efficiency.

---

### 🔹 Forecasting Performance
| Method | RMSE | MAPE | Notes |
|--------|------|------|-------|
| **Grid Search** | Higher than PSO | > 6.28% | Stable but computationally expensive |
| **Genetic Algorithm (GA)** | Moderate | > 6.28% | Better than Grid Search but slower convergence |
| **PSO** | **3555.7** | **6.28%** | Best accuracy, strong generalization, efficient computation |

#### 🧩 Optimal PSO-LSTM Configuration
- **Sequence Length:** 12  
- **Hidden Units:** 41  
- **LSTM Layers:** 1  
- **Dropout Rate:** 0.3  
- **Learning Rate:** 0.0006  

This configuration achieved the **lowest RMSE (3555.7)** and **best MAPE (6.28%)** on the test set.  
The close alignment between training and testing metrics indicates that the PSO-optimized model **does not overfit** and maintains **strong generalization capability**.

---

### 🔹 Time Complexity Comparison
The computational time (in seconds) for each optimization method and sequence length is summarized below:

| Sequence Length | Grid Search (s) | Genetic Algorithm (s) | PSO (s) |
|------------------|-----------------|------------------------|----------|
| 12 | 45.4 | 40.1 | **22.9** |
| 24 | 49.7 | **27.9** | 24.9 |
| 36 | 67.3 | 68.2 | **37.7** |

🕒 **Interpretation:**
- PSO achieves the **lowest computation time** for sequence lengths 12 and 36, indicating strong efficiency in parameter space exploration.  
- GA performs competitively at sequence length 24 but is less stable overall.  
- Grid Search remains the **slowest method** due to exhaustive parameter evaluation.

---

### 🔍 Key Insights
- **PSO delivered the best prediction performance and fastest convergence** among all optimization methods.  
- The simple one-layer LSTM architecture ensures **computational efficiency and ease of deployment**.  
- The proposed model demonstrates **robustness and scalability** for data-driven coal production forecasting.  
- This study highlights the effectiveness of **metaheuristic optimization** in improving deep learning performance.  
- **Future work** can explore hybrid ensemble models or advanced optimization (e.g., PSO + Bayesian Search) to enhance robustness.

---

## 🧰 Tools & Libraries
| Category | Tools / Libraries |
|-----------|------------------|
| **Programming Language** | Python |
| **Deep Learning** | TensorFlow, Keras |
| **Optimization Algorithms** | `pyswarms`, `deap`, `scikit-learn` |
| **Data Handling** | pandas, numpy |
| **Preprocessing & Scaling** | scikit-learn |
| **Visualization** | matplotlib, seaborn |
| **Evaluation Metrics** | RMSE, MAPE |

---

## 📄 Documentation
Full report and analysis are available in:  
📘 [LSTM_Hyperparameter_Optimization_Report.pdf](./Docs/A_Comparative_Study_for_LSTM_Hyperparameter.pdf)

---

## 🧑‍💻 Author
**M. Iqbal Nurrifki**  
📧 [miqbalnurrifki@gmail.com]
