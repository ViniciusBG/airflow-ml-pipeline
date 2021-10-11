FROM apache/airflow:2.1.4
USER airflow
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt