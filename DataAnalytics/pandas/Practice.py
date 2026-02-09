import pandas as pd
import seaborn as sns

ss=pd.Series([1,2,3,4])
print(ss)



s = pd.Series([10, 20, 30], index=["a", "b", "c"])
print(s.values)
print(s.to_numpy())

print(s.values)
print(s>20)


#loading dataset
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


#A DataFrame is a 2-dimensional table (rows + columns), like: Excel sheet, SQL table, Google Sheets
#Dataframes from dictionary
data = {
    "Name": ["Anjali", "Riya", "Neha"],
    "Age": [20, 21, 19],
    "Marks": [85, 90, 88]
}
df = pd.DataFrame(data)
print(df)
print(data)
print(df.columns)
print(df.index)
print(df[['Age','Marks']])
print(df[df["Marks"]>30])

#Dataframes in list of lists
data2 = [
    ["Anjali", 20, 85],
    ["Riya", 21, 90],
    ["Neha", 19, 88]
]
df = pd.DataFrame(data, columns=["Name", "Age", "Marks"])
print(df)
print(data2)

#dataframes from series
s = pd.Series([10, 20, 30])
df = pd.DataFrame(s, columns=["Scores"])
print(df)
print(s)