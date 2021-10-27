FROM python:3.7-buster

RUN groupadd -r mlflow && useradd -r -g mlflow mlflow
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
RUN pip install mlflow[extras]==1.14.1
RUN mkdir -p /data/mlflow /data/mlflow/artifacts && \
    chown -R mlflow:mlflow /data/mlflow /data/mlflow/artifacts && \
    chmod 1777 /data/mlflow /data/mlflow/artifacts

EXPOSE 5000

USER mlflow
CMD ["/bin/sh", "-c", "mlflow server --backend-store-uri sqlite:///data/mlflow/sqlite.db --default-artifact-root /data/mlflow/artifacts --host 0.0.0.0 --port 5000"]
