import pandas as pd
df = pd.read_csv("digital_addiction_study.csv")
df.head()
df.info()
df.isnull().sum()