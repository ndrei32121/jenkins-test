FROM golang:1.16-alpine3.14

RUN mkdir /app && \
    chown -R 1000:1000 /app && \
    go env -w GO111MODULE=off
COPY src/*.go /app
WORKDIR /app
CMD go build -o /mnt/