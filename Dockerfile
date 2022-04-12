FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y python3.9 python3.9-dev python3.9-venv python3-pip python3-wheel build-essential


COPY ./requirements.txt /python-app/requirements.txt
WORKDIR /python-app
RUN pip install -r requirements.txt

COPY ./first-python-webpage.py /python-app/first-python-webpage.py

EXPOSE 8080

ENTRYPOINT ["python2", "first-python-webpage.py"]
