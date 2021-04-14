FROM python:3.9.1-buster

WORKDIR /app

COPY AFED_SECRET .
COPY AFED_ADMINS .
COPY requirements.txt .
COPY AFexcuses-discord.py .
COPY Excuses.txt .
COPY ShutdownExcuses.txt .

RUN pip install -r requirements.txt

CMD ["python", "AFexcuses-discord.py"]
