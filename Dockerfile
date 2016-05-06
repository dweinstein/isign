FROM python:2.7
RUN apt-get update &&  \
      apt-get install -q -q -y --no-install-recommends \
      openssl \
      unzip \
      zip && \
      apt-get clean && rm -rf /var/lib/apt/lists/*
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install ipdb ipython \
  && pip install --no-cache-dir -r /tmp/requirements.txt \
  && rm -f /tmp/requirements.txt 

WORKDIR /isign
COPY . /isign
Run cd /isign && \
      ./version.sh && \
      pip install -e .
WORKDIR /root
