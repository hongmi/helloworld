FROM golang:1.14 as builder

# add the current build context
ADD . /go/src/github.com/hongmi/helloworld

# compile the binary
RUN cd /go/src/github.com/hongmi/helloworld && go install -v .

FROM golang:1.14

COPY --from=builder /go/bin /go/bin

EXPOSE 32123

ENTRYPOINT ["/go/bin/helloworld"]
