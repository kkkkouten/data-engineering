FROM python:3.9.1

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py

ENTRYPOINT ["python", "ingest_data.py"]

#services:
#  postgres:
#    image: postgres:13
#    environment:
#      POSTGRES_USER: airflow
#      POSTGRES_PASSWORD: airflow
#      POSTGRES_DB: airflow
#    volumes:
#      - postgres-db-volume:/var/lib/postgresql/data
#    healthcheck:
#      test: ["CMD", "pg_isready", "-U", "airflow"]
#      interval: 5s
#      retries: 5
#    restart: always
#
#
#
#docker network create pg-network
#
#docker run -it \
#  -e POSTGRES_USER="root" \
#  -e POSTGRES_PASSWORD="root" \
#  -e POSTGRES_DB="ny_taxi" \
#  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
#  -p 5432:5432 \
#  --network=pg-network \
#  --name pg-database \
# postgres:13
#
#docker run -it \
#  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
#  -e PGADMIN_DEFAULT_PASSWORD="root" \
#  -e POSTGRES_DB="ny_taxi" \
#  -p 8080:80 \
#  --network=pg-network \
#  --name pdadmin-2 \
# dpage/pgadmin4
#

#URL="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"
#
#docker run -it \
#  --network=pg-network \
#  taxi_ingest:v001 \
#    --user=root \
#    --password=root \
#    --host=pg-database \
#    --port=5432 \
#    --db=ny_taxi \
#    --table_name=yellow_taxi_trips \
#    --url=${URL}