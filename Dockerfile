FROM python:3-alpine

RUN apk --update add git && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN git clone https://github.com/caronc/apprise.git /app

WORKDIR /app

RUN pip install apprise

ENTRYPOINT ["apprise"]