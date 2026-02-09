# Numpy:
# Q1. Array Creation and Properties
# Using the dataset x:
# 1. Display the shape, size, and datatype of the array.
# 2. Find the sum of all elements in the dataset.
import numpy as np
x = np.array([
 [10, 12, 14, 16, 18],
 [20, 22, 24, 26, 28],
 [30, 32, 34, 36, 38],
 [40, 42, 44, 46, 48]
])

print(f"Shape of array x: {x.shape}");
print(f"Size of array x: {x.size}");
print(f"Datatype: {x.dtype}");
print(f"Sum of array: {np.sum(x)}\n");


# Q2. Even Value Extraction
# From the same dataset x:
# 1. Create a 1-D NumPy array that contains only even values.
# 2. Count the total number of even elements.

even_values=x[x%2==0]
print(f"Even numbers generated: {even_values}")
count_even=even_values.size
print(f"Number of even elements: {count_even}\n")

# Q3. Indexing and Slicing
# Using the dataset x:
# 1. Extract the third column.
# 2. Extract the second row.
# 3. Extract a sub-matrix consisting of rows 2–3 and columns 3–5.

third_col = x[:, 2]
print(f"The third column: {third_col}")
second_row = x[1, :]
print(f"The second row: {second_row}")
sub_matrix = x[1:3, 2:5]
print(f"The submatrix is: {sub_matrix}\n")

# Q4. Array Modification
# Using the same dataset:
# 1. Replace all values greater than 30 with −1.
# 2. Set the fourth row to [1, 2, 3, 4, 5].

x[x > 30] = -1
print(f"Values greater than 30 are: {x}");
x[3] = [1, 2, 3, 4, 5]
print(f"Fourth row set to: {x}\n");


# Q5. Boolean Indexing (Single-Line Operations)
# Given:
# Perform the following using vectorized NumPy operations:
# 1. Extract all scores less than 130.
# 2. Extract all scores of Statira.
# 3. Add 10 marks to Roxana’s scores only.


names = np.array(["Roxana", "Statira", "Roxana", "Statira",
"Roxana"])
scores = np.array([126, 115, 130, 141, 132])
scores_less_130 = scores[scores < 130]
print(f"Scores less than 130: {scores_less_130}")
statira_scores = scores[names == "Statira"]
print(f"Scores of Satira: {statira_scores}")
scores[names == "Roxana"] += 10
print(f"10 marks added: {scores}")








