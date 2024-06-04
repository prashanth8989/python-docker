FROM python:3.6

WORKDIR /app

COPY gunicorn_app/requirements.txt ./
RUN pip install -r requirements.txt

COPY gunicorn_app /app

CMD ["gunicorn", "--reload", "-b", "0.0.0.0:8080", "app:app"]
