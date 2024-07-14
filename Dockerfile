FROM python:3.9-slim-bookworm

WORKDIR /integration/integrate

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY integration/integrate /app/integration/integrate



ENV  TARGET_DATABASE_NAME="dvd_rental"
ENV  TARGET_SERVER_NAME="d1529"
ENV  TARGET_PORT=5433
ENV  LOGGING_SERVER_NAME="daws.com"
ENV  LOGGING_DATABASE_NAME="dvd_rental"
ENV  LOGGING_USERNAME="postgres"
ENV  LOGGING_PASSWORD="es"
ENV  LOGGING_PORT=5433
ENV  AIRBYTE_USERNAME="airbyte"
ENV  AIRBYTE_PASSWORD="poses9"
ENV  AIRBYTE_SERVER_NAME="3.172"
ENV  AIRBYTE_CONNECTION_ID="274721591871bef"

CMD ["python", "-m", "integrate.pipelines.dvd_rental"]
