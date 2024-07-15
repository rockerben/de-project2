FROM python:3.9-slim-bookworm

WORKDIR /integration/integrate

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY integration/integrate /app/integration/integrate



ENV  TARGET_DATABASE_NAME="dvd_rental"
ENV  TARGET_SERVER_NAME="de2-dvd-rental.c9coy0m8sb4w.ap-southeast-2.rds.amazonaws.com"
ENV  TARGET_DB_USERNAME="postgres"
ENV  TARGET_DB_PASSWORD="postgresRpw1529"
ENV  TARGET_PORT=5433
ENV  LOGGING_SERVER_NAME="de2-dvd-rental.c9coy0m8sb4w.ap-southeast-2.rds.amazonaws.com"
ENV  LOGGING_DATABASE_NAME="dvd_rental"
ENV  LOGGING_USERNAME="postgres"
ENV  LOGGING_PASSWORD="postgresRpw1529"
ENV  LOGGING_PORT=5433
ENV  AIRBYTE_USERNAME="airbyte"
ENV  AIRBYTE_PASSWORD="password
ENV  AIRBYTE_SERVER_NAME="3.106.230.72"
ENV  AIRBYTE_CONNECTION_ID="2747215d-c040-47f5-a0bc-9ceb91871bef"

CMD ["python", "-m", "integration.project.pipelines.dvd_rental"]