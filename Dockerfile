FROM python:3.9

RUN apt-get update -y && apt-get install -y git
RUN git clone https://github.com/shirosaidev/stockbot

WORKDIR /stockbot

RUN pip3 install -r requirements.txt

ARG APCA_API_KEY_ID=${APCA_API_KEY_ID}
ENV APCA_API_KEY_ID=${APCA_API_KEY_ID}
ARG APCA_API_SECRET_KEY=${APCA_API_SECRET_KEY}
ENV APCA_API_SECRET_KEY=${APCA_API_SECRET_KEY}
ARG APCA_API_BASE_URL=${APCA_API_BASE_URL}
ENV APCA_API_BASE_URL=${APCA_API_BASE_URL}

COPY config.py .

