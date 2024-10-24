FROM golang:1.22-alpine

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

ENV APP_PATH /go/src/app
WORKDIR $APP_PATH

RUN go install github.com/air-verse/air@latest
CMD ["air"]
