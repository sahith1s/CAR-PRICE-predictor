
FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
COPY ./ml ././ml
COPY ./templates ././templates
COPY ./static ././static
COPY ./db ././db
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .



CMD [ "python3", "app.py"]