
import pandas as pd
from sqlalchemy import create_engine

# url connection
db_url = 'postgresql://postgres:postgres@localhost:5432/RI_RealEstate'
engine = create_engine(db_url)

# TESTING TO SEE IF PROPERLY CONNECTED
# test_query = 'SELECT * FROM "Dimension" LIMIT 5;'

# # Attempt to execute the test query
# try:
#     connection = engine.connect()
#     df = pd.read_sql_query(test_query, connection)
#     connection.close()
#     print("Sample data from the 'Dimension' table:")
#     print(df)
#     print(f"Connected to database: {db_url}")
# except Exception as e:
#     print(f"An error occurred while connecting to the database: {e}")

query = 'select * from "House"'
print(query)
# df = pd.read_sql_query(query, engine)
print(f"connected to database: {db_url}")