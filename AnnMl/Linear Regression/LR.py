import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# Input feature (size)
X = np.array([[500], [700], [900], [1100], [1300], [1500]])

# Output (price in lakh)
y = np.array([10, 14, 18, 22, 26, 30])

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)
