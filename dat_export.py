import pandas as pd
import mysql.connector

df = pd.read_csv("C:/Users/grama/OneDrive/Documents/DA Projects/7E-Commerce Marketing Performance & Sales Analytics - Amazon/Data/cleaned_sales_data.csv")

conn = mysql.connector.connect(
    host="127.0.0.1",
    port= 3306,
    user="root",
    password="Chinna@11",   # your actual password
    database="amazon_analytics"
)
cursor = conn.cursor()


sql = """
INSERT INTO sales_data
(order_id, order_date, product_id, product_category, price,
 discount_percent, discounted_price, quantity_sold,
 customer_region, payment_method, rating, review_count, total_revenue)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
"""

for _, row in df.iterrows():
    values = (
        row["order_id"],
        row["order_date"],
        row["product_id"],
        row["product_category"],
        row["price"],
        row["discount_percent"],
        row["discounted_price"],
        row["quantity_sold"],
        row["customer_region"],
        row["payment_method"],
        row["rating"],
        row["review_count"],
        row["total_revenue"]
    )

    cursor.execute(sql, values)

conn.commit()
print("Import completed")


