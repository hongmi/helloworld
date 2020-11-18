FROM golang:1.14

# add the current build context
ADD . /go/src/github.com/hongmi/helloworld

# compile the binary
RUN cd /go/src/github.com/hongmi/helloworld && go install -v .

EXPOSE 32123

ENTRYPOINT ["/go/bin/helloworld"]
