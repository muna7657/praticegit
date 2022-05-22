FROM python:3.8.3-alpine
RUN apk add --no-cache python3 py3-pip
RUN python -m pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
