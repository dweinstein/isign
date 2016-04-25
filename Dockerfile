FROM python:2.7
WORKDIR /isign
RUN apt-get update &&  \
      apt-get install zip unzip && \
      pip install isign && \
      apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /root
