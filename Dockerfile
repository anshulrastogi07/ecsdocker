FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python-dev python-pip
RUN apt-get update -y && apt-get install -y
 
FROM python:2.7.16

COPY ./requirements.txt /python-app/requirements.txt
WORKDIR /python-app
RUN pip install -r requirements.txt

COPY ./first-python-webpage.py /python-app/first-python-webpage.py

EXPOSE 8080

ENTRYPOINT ["python2", "first-python-webpage.py"]
