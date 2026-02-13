import kagglehub
import os
import pandas as pd
# mean,min,max,sum,conditional and comparision operator
# Download latest version
path = kagglehub.dataset_download("ayeshasiddiqa123/student-perfirmance")
print("Path to dataset files:", path)
csv_path=os.path.join(path,"StudentPerformanceFactors.csv")
df=pd.read_csv(csv_path)
print(df)

# print("First row : ")
# print(df.head(1));

# print("Last row : ")
# print(df.tail(1))

# print("Data information : ");
# print(df.info())

# print("Columns in dataset : ")
# print(df.columns)

# print("mean of Hours_Studied : ")
# print(df["Hours_Studied"].mean())

# print("sum of Hours_Studied : ")
# print(df["Hours_Studied"].sum())

# print("Min Hours_Studies : ")
# print(df["Hours_Studied"].min())

# print("Max Hours_Studies : ")
# print(df["Hours_Studied"].max())

# print("Study hours greater than 5 : ",df[df["Hours_Studied"]>5])