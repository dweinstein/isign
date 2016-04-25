FROM python:2.7
WORKDIR /isign
RUN apt-get update &&  \
      apt-get install zip unzip && \
      apt-get clean && rm -rf /var/lib/apt/lists/*
COPY . /isign
RUN ./version.sh && \
      pip install -e . && \
      rm -rf /isign
WORKDIR /root
