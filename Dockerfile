FROM golang:1.16-alpine

WORKDIR /app

COPY src/go.mod .
COPY src/go.sum .
RUN go mod download

COPY *.go ./

RUN go build -o /hello-world

EXPOSE 8080

CMD [ "/hello-world" ]
