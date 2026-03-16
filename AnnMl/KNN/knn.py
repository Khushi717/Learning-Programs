#Titanic dataset- knn is used when there are less attributes in the datasets
import pandas as pd # for data handling
import seaborn as sns  # provides the Titanic dataset
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler

df=sns.load_dataset("titanic")
print(df.head(5)) #This shows First 5 rows
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
df = pd.get_dummies(df, columns=["sex", "adult_male","embarked","alone","class", "who", "embark_town","alive"], drop_first=True, dtype=int)

# # # Convert boolean to int
# df["alone"] = df["alone"].astype(int)
print(df.dtypes) #which columns are object (text), numeric, boolean

# cleaning nd transforming 
df = df.drop_duplicates()# removing duplicates
print("Before IQR shape : ")
print(df.shape)
#IQR-removing outliers
Q1 = df[["fare","age"]].quantile(0.25)
Q3 = df[["fare","age"]].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR

print(f"Lowerr IQR: {lower}")
print(f"Uper IQR : {upper}")

# #df = df[(df[["fare","age"]] >= lower) & (df[["fare","age"]] <= upper)] #wrong
df = df[
    (df["fare"] >= lower["fare"]) & (df["fare"] <= upper["fare"]) &
    (df["age"]  >= lower["age"])  & (df["age"]  <= upper["age"])
]
print("After IQR shape : ")
# to verify if outliers are removed if so then number od rows should decrease 
print(df.shape)

#seperating target from feature
X = df.drop("survived", axis=1)
y = df["survived"]


# split data
X_train, X_test, y_train, y_test = train_test_split(
    X, y,
    test_size=0.2,
    random_state=42
)
#scaling
scaler=StandardScaler()
X_train=scaler.fit_transform(X_train)
X_test=scaler.transform(X_test)

# KNN model
knn = KNeighborsClassifier(n_neighbors=5)

# train
knn.fit(X_train, y_train)

# predict
y_pred = knn.predict(X_test)

# accuracy
print("Accuracy:", accuracy_score(y_test, y_pred))