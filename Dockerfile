FROM golang:latest

RUN go install golang.org/x/tools/gopls@latest

ENTRYPOINT ["tall", "-f", "/dev/null"]
