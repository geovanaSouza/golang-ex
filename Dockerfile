FROM geovanasouza/golang:1.6

EXPOSE 8080
USER nobody

RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex

COPY . /go/src/github.com/openshift/golang-ex
RUN go-wrapper download && go-wrapper install

CMD ["go-wrapper", "run"]
