# airflow-ml-pipeline

This repo aims to create an experimental usage of Airflow for maitaining Machine Learning pipelines.
Created by Vinicius Bastos Gomes and Eduardo Mello.

## Installing it 

It's super easy to put everything here to work.
After cloning the repo, all you need to do is to run the following commands in your shell (inside) the project's folder.
You can paste them one by one or run them at once.

```
# creates the .env file and sets some environment variables
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

# builds the image based on our Dockerfile and docker-compose.yml
docker-compose build

# runs database migrations and create the first user account
docker-compose up airflow-init

# starts the containers
docker-compose up
```

For now, that's all we need. Keep in mind that we'll probably need to rebuild the containers to add some pythono packages in the future.
