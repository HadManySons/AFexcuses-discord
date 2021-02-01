FROM python:3.9.1-buster

WORKDIR /app

COPY requirements.txt .
COPY AFexcuses-discord.py .
COPY Excuses.txt .
COPY ShutdownExcuses.txt .
COPY AFED_ENVS.list .

RUN pip install -r requirements.txt

RUN ["python", "AFexcuses-discord.py"]
