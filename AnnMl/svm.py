#spam detection with svm
#Titanic dataset
import pandas as pd # for data handling
import seaborn as sns  # provides the Titanic dataset
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score, classification_report
from sklearn.preprocessing import StandardScaler

df=sns.load_dataset("titanic")
print(df.head()) #This shows First 5 rows
print(df.shape) #How big is data (row,col)
print(df.columns) # attributes exist
print(df.info()) # check total rows,cols nd missing values nd identify datatypes
print(df.isnull().sum()) #count/sum missing value per column
df["age"] = df["age"].fillna(df["age"].median())
df["embarked"] = df["embarked"].fillna(df["embarked"].mode()[0])
df["embark_town"] = df["embark_town"].fillna(df["embark_town"].mode()[0])
df = df.drop(columns=["deck"])
print(df.isnull().sum())


# One-hot encode NOMINAL columns
df = pd.get_dummies(df, columns=["sex", "adult_male","embarked", "who", "embark_town","class"], drop_first=True, dtype=int)

# # Convert boolean to int
df["alone"] = df["alone"].astype(int)
print(df.dtypes) #which columns are object (text), numeric, boolean

# cleaning nd transforming 
df = df.drop_duplicates()# removing duplicates

#IQR-removing outliers
Q1 = df[["fare","age"]].quantile(0.25)
Q3 = df[["fare","age"]].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR

print(f"Lowerr{lower}")
print(f"Uperr{upper}")

#df = df[(df[["fare","age"]] >= lower) & (df[["fare","age"]] <= upper)] #wrong
df = df[
    (df["fare"] >= lower["fare"]) & (df["fare"] <= upper["fare"]) &
    (df["age"]  >= lower["age"])  & (df["age"]  <= upper["age"])
]
# to verify if outliers are removed if so then number of rows should decrease   
print(df.shape)

#Scaling-making all feature values comparable
X = df.drop("survived", axis=1)
X = df.drop("alive", axis=1)
y = df["survived"]


# split data
X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.2,
    random_state=42
)
#scaling the input and removing outliers so we can predict output
scaler=StandardScaler()
X_train=scaler.fit_transform(X_train)
X_test=scaler.transform(X_test)

#Create a Linear SVM model
# svm_linear = SVC(
#     kernel="linear",   # straight line
#     C=1,               # default strictness
#     random_state=42
# )

# svm_poly = SVC(
#     kernel="poly",
#     degree=2,     # amount of bending
#     C=1,          #default strictness- balanced strictness
#     gamma="scale", #gamma controls the influence of individual data points on the decision boundary.
#     random_state=42
# )

svm_rbf = SVC(
    kernel="rbf",
    C=1,
    gamma="scale",
    random_state=42
)

# Train the model
svm_rbf.fit(X_train, y_train)

#Predict on test data
y_pred_linear = svm_rbf.predict(X_test)

# print("Linear SVM Accuracy:", accuracy_score(y_test, y_pred_linear))
print("Linear SVM Accuracy:", accuracy_score(y_test, y_pred_linear))
print(classification_report(y_test, y_pred_linear))
