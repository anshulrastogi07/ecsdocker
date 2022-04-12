FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python3.9-dev python-pip

COPY ./requirements.txt /python-app/requirements.txt
WORKDIR /python-app
RUN pip install -r requirements.txt

COPY ./first-python-webpage.py /python-app/first-python-webpage.py

EXPOSE 8080

ENTRYPOINT ["python2", "first-python-webpage.py"]
