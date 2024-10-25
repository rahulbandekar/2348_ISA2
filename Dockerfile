
FROM ubuntu:latest


RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

RUN mkdir -p /opt/app
COPY application.py /opt/app/application.py

CMD FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0 --port=5000
