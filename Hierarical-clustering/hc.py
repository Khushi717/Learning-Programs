import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs
from scipy.cluster.hierarchy import dendrogram, linkage
from sklearn.cluster import AgglomerativeClustering

# 🔹 Step 1: Create dataset
X, y = make_blobs(n_samples=300, centers=3, random_state=42)

# 🔹 Step 2: Create dendrogram
Z = linkage(X, method='ward')

plt.figure(figsize=(6,4))
dendrogram(Z)
plt.title("Dendrogram")
plt.xlabel("Data Points")
plt.ylabel("Distance")
plt.show()

# 🔹 Step 3: Apply Agglomerative Clustering (choose clusters = 3)
model = AgglomerativeClustering(n_clusters=3, linkage='ward')
labels = model.fit_predict(X)

# 🔹 Step 4: Plot clusters
plt.figure(figsize=(6,4))
plt.scatter(X[:, 0], X[:, 1], c=labels)
plt.title("Hierarchical Clustering (3 clusters)")
plt.show()