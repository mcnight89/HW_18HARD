FROM python:3.10-slim

ENV FLASK_APP=run_app.py
COPY requirements.txt .
RUN python3 -m pip install --no-cache -r requirements.txt

COPY . .


CMD ["flask", "run", "-h", "0.0.0.0", "-p", "80"]