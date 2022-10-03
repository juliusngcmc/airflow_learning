from airflow import DAG
from datetime import datetime
from airflow.providers.postgres.operators.postgres import PostgresOperator

with DAG('user_processing',  # DAG ID, must be unique for Airflow DAG
         start_date=datetime(2022, 10, 3),  # Define the date of DAG starts being scheduled
         schedule_interval='@daily',  # The frequency of DAG is triggered, define by the cron expression
         catchup=False  #
         ) as dag:
    create_table = PostgresOperator(
        task_id='create_table',
        postgres_conn_id='postgres',
        sql='''
            CREATE TABLE IF NOT EXISTS users(
                firstname TEXT NOT NULL,
                lastname TEXT NOT NULL,
                country TEXT NOT NULL,
                username TEXT NOT NULL,
                password TEXT NOT NULL,
                email TEXT NOT NULL
            );
        '''
    )
