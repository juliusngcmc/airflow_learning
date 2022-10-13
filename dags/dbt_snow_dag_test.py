from datetime import timedelta

from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import datetime
from airflow.utils.dates import timedelta

default_args = {
    'owner': 'julius',
    'depends_on_past': False,
    'start_date': datetime(2020, 12, 23),
    'email': ['nkduy3@cmcglobal.vn'],
    'email_on_failure': True,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=1)
}

with DAG(
        dag_id='dbt_snow_dag_test',
        default_args=default_args,
        start_date=datetime(2022, 10, 13),
        description='An Airflow DAG to invoke simple dbt commands',
        schedule_interval=timedelta(days=1),
) as dag:
    dbt_run = BashOperator(
        task_id='dbt_run',
        bash_command='cd dbt && dbt run .',
        env={
            'dbt_user': '{{ var.value.dbt_user }}',
            'dbt_password': '{{ var.value.dbt_password }}'
        },
        dag=dag
    )

    # dbt_test = BashOperator(
    #     task_id='dbt_test',
    #     bash_command='dbt test'
    # )

    dbt_run
