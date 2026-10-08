import pandas as pd

# Data Understanding

df = pd.read_csv("nba.csv")

print(df.head())

print(df.shape)

print(df.columns)


# Data Cleaning

# 5. Convert Salary column to numeric
df["Salary"] = pd.to_numeric(df["Salary"], errors="coerce")

# 6. Count missing values
print(df.isna().sum())

# Filtering Data

print(df[df["Team"] == "Boston Celtics"])

print(df[df["Age"] > 30])

print(df[df["Position"] == "PG"])

print(df[df["Salary"] > 5000000])

# Sorting

print(df.sort_values(by="Salary", ascending=False))

print(df.sort_values(by="Age", ascending=True))


## groupby 

df.groupby("Team")
df.groupby("Team")["Salary"].mean()

# Aggregations

# 18. Average age of players
print(df["Age"].mean())

# 19. Maximum salary in the dataset
print(df["Salary"].max())

# 20. Minimum weight
print(df["Weight"].min())

# Column Operations

# 21. Create a new column Age_in_5_years
df["Age_in_5_years"] = df["Age"] + 5

# 22. Create a new column Salary_in_Millions
df["Salary_in_Millions"] = df["Salary"] / 100000

# 23. Team with the highest total salary payout
print(df.groupby("Team")["Salary"].sum().idxmax())

# 24. Position with the highest average salary
print(df.groupby("Position")["Salary"].mean().idxmax())