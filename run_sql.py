import duckdb

# Connect to your project database
con = duckdb.connect('dev.duckdb')

# Paste any SQL query between the triple quotes below
query = """
SELECT
* FROM main.stripe_payment
WHERE amount > 25
LIMIT 10
"""

# This executes and prints the result
print(con.sql(query).show())