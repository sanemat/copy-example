FROM ubuntu:14.04

MAINTAINER sanemat sanemat@tachikoma.io

RUN mkdir -p /code
COPY ./parent-dir /code/parent

# Create user
ENV APP_USER appuser
RUN adduser $APP_USER

RUN chmod -R 777 /code

# Change user
USER appuser
WORKDIR /home/appuser
ENV HOME /home/appuser
