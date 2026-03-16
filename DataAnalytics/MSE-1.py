import pandas as pd
from sklearn.discriminant_analysis import StandardScaler
from sklearn.preprocessing import MinMaxScaler
data = {
    'Age': [20, 21, None, 22],
    'Marks': [85, None, 78, 90]
}
df = pd.DataFrame(data) #This line converts the dictionary data into a Pandas DataFrame.
# Handling missing values with deletion and interpolation methods
df.dropna()
df.drop(columns=['Age'])
df['Marks'].fillna(df['Marks'].mean())    #normally distrubuted data 
df['Marks'].fillna(df['Marks'].median())  #skewed data 
df['Marks'].fillna(df['Marks'].mode()[0]) # categorical data
df.fillna(method='ffill') # forward fill
df.fillna(method='bfill') # backward fill
df.interpolate() # time series
print(df.isnull().sum()) # check missing values - count count missing values in each column

# outlier
#IQR method
Q1 = df['Marks'].quantile(0.25)
Q3 = df['Marks'].quantile(0.75)
IQR = Q3 - Q1

df = df[(df['Marks'] >= Q1 - 1.5*IQR) &
        (df['Marks'] <= Q3 + 1.5*IQR)]
#z-score method
mean = df['Marks'].mean()
std = df['Marks'].std()
df = df[(df['Marks'] >= mean - 3*std) &
        (df['Marks'] <= mean + 3*std)]
# noise
#smooting
df['sales'].rolling(window=3).mean()
# binning Binning divides data into groups (bins) and replaces values with:
#•	Mean of the bin
#•	Median of the bin
#•	Boundary values
# filtering The Moving Average Filter smooths noisy data by replacing each value with the average of nearby values in a window.
df['Smoothed'] = df['Marks'].rolling(window=3, min_periods=1).mean()
# transformstion
#scaling- normalization and standardization
#log tranformation- when data is highly skewed
import numpy as np
df['log_salary'] = np.log(df['Salary'])
# Square Root Transformation - moderately skewed data
df['sqrt_salary'] = np.sqrt(df['Salary'])
# encoding categorical data
pd.get_dummies(df['Gender'])
#one hot encoding- nominal data
from sklearn.preprocessing import OneHotEncoder
encoder = OneHotEncoder()
encoded_data = encoder.fit_transform(df[['Gender']])
#label encoding- ordinal data
from sklearn.preprocessing import LabelEncoder
label_encoder = LabelEncoder()
df['Education_encoded'] = label_encoder.fit_transform(df['Education'])
# normalization- min-max scaling
#X′=(X−Xmin)/(Xmax−Xmin)
# range 0 to 1
df['Age_normalized'] = (df['Age'] - df['Age'].min()) /(df['Age'].max() - df['Age'].min())
from sklearn.model_selection import StandardScaler
scaler = StandardScaler()
df['Age_standardized'] = scaler.fit_transform(df[['Age']])
# standardization- z-score scaling
#X′=(X−μ)/σ
#•	Mean = 0
#	Standard Deviation = 1
df['Age_zscore'] = (df['Age'] - df['Age'].mean()) / df['Age'].std()
from sklearn.model_selection import MinMaxScaler
scaler = MinMaxScaler()
df['Age_normalized'] = scaler.fit_transform(df[['Age']])
#data wrangling
df = pd.read_csv("students.csv")
df.head()      # First 5 rows
df.info()      # Structure
df.describe()  # Statistical summary
df.isnull().sum()
df.fillna(0)
df.drop_duplicates()
df.rename(columns={'old_name':'new_name'}, inplace=True)
df['Age'] = df['Age'].astype(int)
df[df['Marks'] > 80]
df.sort_values(by='Marks', ascending=False)
pd.merge(df1, df2, on='ID')