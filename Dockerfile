FROM python:3.8.7

ENV WORKDIR=/usr/src/app

WORKDIR $WORKDIR

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN apt update && apt -y install cron && touch /var/log/cron.log
RUN crontab

COPY ./app/requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy project
COPY . $WORKDIR