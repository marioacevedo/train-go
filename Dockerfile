FROM golang:alpine AS buildenv
ADD . /src
RUN cd /src && go build -o goapp

FROM alpine
COPY --from=buildenv /src/goapp /train-go
ENTRYPOINT [ "/train-go" ]