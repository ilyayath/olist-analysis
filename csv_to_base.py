import psycopg2  
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.engine import URL  
import tqdm 
import os

db_user = "postgres"
db_password = "passwordforuser"
db_host = "localhost"
db_port = "5432"
db_name = "olist"

url = URL.create(
    drivername="postgresql+psycopg2",
    username=db_user,
    password=db_password,
    host=db_host,
    port=db_port,
    database=db_name,
)

engine = create_engine(url)

csv_dir = r"C:\Users\iyfoo\Downloads\olist-dataset"
csv_files = [f for f in os.listdir(csv_dir) if f.endswith(".csv")]

for file in tqdm.tqdm(csv_files):
    name = file.replace(".csv", "")
    df = pd.read_csv(os.path.join(csv_dir, file))
    with engine.begin() as connection:
        df.to_sql(name, con=connection, index=False, if_exists='replace')
    print(f"Downloaded: {name}")
