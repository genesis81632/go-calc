FROM golang:1.22-alpine3.19
WORKDIR /go
COPY . /go
RUN apk add make
RUN make build_linux
EXPOSE 8080
CMD ["./build/go-calc"]