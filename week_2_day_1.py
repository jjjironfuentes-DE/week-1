import pandas as pd
 
batch_1 = pd.DataFrame({
    "order_id": [101, 102],
    "city": ["London", "Manchester"],
    "amount_gbp": [45.50, 18.00],
})
 
batch_2 = pd.DataFrame({
    "order_id": [103, 104],
    "city": ["Bristol", "London"],
    "amount_gbp": [62.25, 27.40],
})
 
batch_3 = pd.DataFrame({
    "order_id": [105, 106],
    "city": ["Leeds", "Manchester"],
    "amount_gbp": [34.80, 51.10],
})
 
print("Batch 1:", len(batch_1))
print("Batch 2:", len(batch_2))
print("Batch 3:", len(batch_3))
 
all_orders = pd.concat(
    [batch_1, batch_2, batch_3],
    ignore_index=True,
)
 
print("Total rows:", len(all_orders))
print("Total sales:", all_orders["amount_gbp"].sum())

batch_1["batch_id"] = "batch_1"
batch_2["batch_id"] = "batch_2"
batch_3["batch_id"] = "batch_3"
 
all_orders = pd.concat(
    [batch_1, batch_2, batch_3],
    ignore_index=True,
)
 
summary = (
    all_orders
    .groupby("batch_id", as_index=False)
    .agg(
        row_count=("order_id", "count"),
        sales_gbp=("amount_gbp", "sum"),
    )
)
 
print(summary)

import pandas as pd
 
orders = pd.DataFrame({
    "order_id": [201, 202, 203, 204],
    "city": [" London ", "Manchester", "Leeds", None],
    "amount_gbp": [45.50, -5.00, 30.00, 20.00],
})
 
invalid_mask = (
    orders["city"].isna()
    | (orders["amount_gbp"] <= 0)
)
 
rejected_orders = orders[
    invalid_mask
].copy()
 
valid_orders = orders[
    ~invalid_mask
].copy()
 
valid_orders["city"] = (
    valid_orders["city"].str.strip()
)
 
print(valid_orders)
print(rejected_orders)