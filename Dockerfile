FROM python:3.6-slim
#FROM ubuntu:16.04

#RUN apt-get update -y && \
#    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt
RUN date

WORKDIR /app

RUN date

ADD . /app

RUN date

RUN pip install -r requirements.txt

COPY . /app

RUN date

EXPOSE 5000

RUN date

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]