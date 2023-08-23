FROM python:3.11-bullseye

WORKDIR /app
COPY . /app

RUN mkdir ./data
RUN apt-get update
RUN apt-get install -y default-mysql-client
RUN pip install --no-cache-dir -r requirements.txt

VOLUME /app/data
VOLUME /app/config

ENTRYPOINT ["python3","main.py"]