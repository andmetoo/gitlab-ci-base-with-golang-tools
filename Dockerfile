FROM golang:1.15

RUN apt update -y && apt install openssh-client git \
    postgresql-client curl  -y

RUN go get -u github.com/maxmind/geoipupdate/cmd/geoipupdate
RUN go get -u github.com/pressly/sup/cmd/sup

RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.38.0

