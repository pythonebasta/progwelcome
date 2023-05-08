
FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app
RUN  pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0 --port=8080
CMD ["app.py"]