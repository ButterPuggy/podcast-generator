FROM python:3.11-slim

WORKDIR /app

RUN pip install pyyaml

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
