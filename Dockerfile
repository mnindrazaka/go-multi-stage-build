FROM golang AS build
COPY . .
RUN go build -o output main.go

FROM golang
COPY --from=build /go/output /output
CMD ["/output"]