FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python 3.12 \
    python3-pip \
    git
RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

