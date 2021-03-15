FROM golang:1.15

RUN apt update -y && apt install openssh-client git \
    postgresql-client curl  -y

RUN go get -u github.com/maxmind/geoipupdate/cmd/geoipupdate && \
    go get -u github.com/pressly/sup/cmd/sup && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint@v1.38.0
