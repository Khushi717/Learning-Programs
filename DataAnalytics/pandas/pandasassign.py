import pandas as pd
# Q8. DataFrame Creation
# Create a Pandas DataFrame of at least four countries with the
# following details:
# • Population
# • Capital
# The country name should be the index.

data={
    "population":[23,45,56,90],
    "capital":["New Delhi","Berlin","Paris","Ghaziabad"]
}

df=pd.DataFrame(data,index=["India","Austrailia","America","Nepal"])
print(df)

# Q9. Data Inspection
# Using the created DataFrame:
# 1. Display the first few rows.
# 2. Display DataFrame information and column data types.

print("First 2 rows : ")
print(df.head(2));
print("Last 2 row : ")
print(df.tail(2))
print("Data information:\n");
print(df.info())

# Q10. Data Selection and Filtering
# 1. Display the population of a specific country.
# 2. Filter countries with population greater than a given value.

print("Population of India is : ")
print(df.loc["India","population"])
print("Population greater than 40 : ")
print(df[df["population"]>40])

# Q11. Data Manipulation
# 1. Add a new column named GDP.
# 2. Rename a column.
# 3. Remove one column from the DataFrame.

df["GDP"]=[90,5.6,7.8,3.4]
df.rename(columns={"population":"Population_Measure"},inplace=True)
df.info()
df.drop(columns={"GDP"})
df.info()

# Q12. Aggregation and Sorting
# print(df.sort_values(by="Population_Measure"))
# print("Average Population:", df["Population_Measure"].mean())

print("Sorted values by population : ")
print(df.sort_values(by="Population_Measure"))
print("Mean of pupulation measure : ")
print(df["Population_Measure"].mean())