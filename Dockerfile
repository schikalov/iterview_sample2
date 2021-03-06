FROM python:3.8.3-alpine

WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["./entrypoint.sh"]

