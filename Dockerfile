FROM golang:alpine3.11 AS builder

WORKDIR /build
COPY main.go .
RUN go build main.go

FROM alpine:3.11
ADD docker-entrypoint.sh /usr/local/bin
COPY --from=builder /build/main /usr/local/bin/main
VOLUME [ "/app" ]
EXPOSE 3000
CMD ["/usr/local/bin/main"]
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]