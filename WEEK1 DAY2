
##Q1##

amounts = [24.50, 55.00, 120.00, 49.99, 99.50]
 
for amount in amounts:
    if amount >= 100:
        print(amount, "High")
    elif amount >= 50:
        print(amount, "Medium")
    else:
        print(amount, "Low")
        
        
        amount = 125
is_member = True
 
 ##Q2##
 
if amount >= 100 and is_member:
    print("Discount eligible")
else:
    print("No discount")
 
amount = 125
is_member = False
 
if amount >= 100 and is_member:
    print("Discount eligible")
else:
    print("No discount")
 
amount = 65
is_member = True
 
if amount >= 100 and is_member:
    print("Discount eligible")
else:
    print("No discount")
    
    ##Q3##
    
    statuses = [
    "complete",
    "cancelled",
    "complete",
    "complete",
]
 
amounts = [
    45.50,
    18.00,
    62.25,
    30.00,
]
 
completed_revenue = 0
 
for index in range(len(amounts)):
    if statuses[index] == "complete":
        completed_revenue += amounts[index]
 
print(f"Completed revenue: £{completed_revenue:.2f}")
    
    
    ##Q4##
    #(ANSWER=C)
    

## Q6 ##
 
order_ids = [301, 302, 303, 304, 305]
target_id = 303
 
for order_id in order_ids:
    if order_id == target_id:
        print("Found:", order_id)
        break
    
    ## Q7 ##
    
    amounts = [45.50, -5.00, 18.00, 0, 62.25]
 
total = 0
 
for amount in amounts:
    if amount <= 0:
        continue
 
    print("Valid:", amount)
    total += amount
 
print(f"Total: £{total:.2f}")

## Q 8 ##
##(ANSWER- A)

## Q 9 ##

    
stores = ["London", "Manchester", "Bristol"]
 
stores.append("Leeds")
stores[2] = "Birmingham"
stores.remove("Manchester")
 
print(stores)


## Q10 ##

store_ids = ["LDN-01", "MAN-02", "LDN-01", "BRS-03", "MAN-02"]
 
unique_store_ids = set(store_ids)
 
print("Original count:", len(store_ids))
print("Unique count:", len(unique_store_ids))
print("Unique values:", unique_store_ids)

## Q11 ##

store_location = ("LDN-01", "London", "South")
 
print(store_location[0])
print(store_location[1])
print(store_location[2])

## Q12 ##
##(ANSWER - D)

## Q13 ##

customer = {
    "customer_id": "C101",
    "name": "Amelia Clarke",
    "city": "London",
    "total_spend": 425.50,
}
 
print(customer["name"])
print(customer["total_spend"])

## Q14 ##

stores = {
    "LDN-01": {
        "city": "London",
        "revenue_gbp": 5000,
    },
    "MAN-02": {
        "city": "Manchester",
        "revenue_gbp": 4200,
    },
}
 
print(stores["MAN-02"]["revenue_gbp"])

## Q15 ##

cities = [
    "London",
    "Manchester",
    "London",
    "Leeds",
    "London",
    "Manchester",
]
 
city_counts = {}
 
for city in cities:
    if city in city_counts:
        city_counts[city] += 1
    else:
        city_counts[city] = 1
 
print(city_counts)

## Q16 ##
#(ANSWER - B)

## Q17 ##

orders = [
    {"order_id": 401, "city": "London", "amount_gbp": 45.50},
    {"order_id": 402, "city": "Manchester", "amount_gbp": -5.00},
    {"order_id": 401, "city": "London", "amount_gbp": 45.50},
    {"order_id": 403, "city": "Leeds", "amount_gbp": 30.00},
]
 
accepted = []
rejected = []
seen_ids = set()
 
for order in orders:
    order_id = order["order_id"]
 
    if order_id in seen_ids:
        rejected.append(order)
        continue
 
    seen_ids.add(order_id)
 
    if order["amount_gbp"] <= 0:
        rejected.append(order)
        continue
 
    accepted.append(order)
 
print("Accepted:", accepted)
print("Rejected:", rejected)

## Q18 ##

revenue_by_city = {}
 
for order in accepted:
    city = order["city"]
    amount = order["amount_gbp"]
 
    if city not in revenue_by_city:
        revenue_by_city[city] = 0
 
    revenue_by_city[city] += amount
 
print(revenue_by_city)

## Q19 ##

amounts = [10, -5, 20, 0, 30, 40]
 
valid_count = 0
 
for amount in amounts:
    if amount <= 0:
        continue
 
    print(amount)
    valid_count += 1
 
    if valid_count == 3:
        break
    
    