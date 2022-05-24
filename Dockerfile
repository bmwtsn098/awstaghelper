FROM golang:1.18

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential

ADD . /awstaghelper
WORKDIR /awstaghelper

#ENV GOPATH=$GOPATH:/unew/
RUN go mod tidy
RUN go build