import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_classification
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier, plot_tree

# 🔹 Step 1: Create dataset
X, y = make_classification(n_samples=200, n_features=2, 
                           n_classes=2, n_redundant=0, 
                           n_clusters_per_class=1, random_state=42)

# 🔹 Step 2: Split data
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

# 🔹 Step 3: Create model
model = DecisionTreeClassifier(criterion="entropy", max_depth=3)

# 🔹 Step 4: Train model
model.fit(X_train, y_train)

# 🔹 Step 5: Predict
y_pred = model.predict(X_test)

# 🔹 Step 6: Accuracy
from sklearn.metrics import accuracy_score
print("Accuracy:", accuracy_score(y_test, y_pred))

# 🔹 Step 7: Visualize tree
plt.figure(figsize=(10,6))
plot_tree(model, filled=True)
plt.title("Decision Tree")
plt.show()