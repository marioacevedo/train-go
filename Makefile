all: test build

test: lint
	go test -v ./... -cover

build: 
	docker build -t marioacevedo/train-go .

lint:
	go fmt ./...
	go vet ./...