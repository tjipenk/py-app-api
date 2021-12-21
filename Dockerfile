FROM python:3.10.1-alpine3.15

ENV PYHONUNBUFFERED 1

COPY ./requirements.txt ./requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app/

RUN adduser -D user
USER user
