import duckdb

# Connect to the local project file
con = duckdb.connect('dev.duckdb')

# Show the first 5 rows of your payments
print("--- STRIPE PAYMENTS DATA ---")
print(con.sql("SELECT * FROM main.stripe_payment LIMIT 5").show())

# Show the first 5 rows of your customers
print("\n--- SHOP CUSTOMERS DATA ---")
print(con.sql("SELECT * FROM main.shop_customers LIMIT 5").show())
