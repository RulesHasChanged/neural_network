FROM python:3.7.6-slim-buster

RUN apt-get -y update && \ 
    apt-get install -y git

WORKDIR /opt/nn
COPY requirements.txt requirements.txt

RUN pip3.7 install -r requirements.txt && \
    git clone https://github.com/tensorflow/tensorflow /opt/tf --depth 1
RUN ln -s /opt/tf/tensorflow/examples/tutorials /usr/local/lib/python3.7/site-packages/tensorflow_core/examples/tutorials


