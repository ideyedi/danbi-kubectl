# Makefile for danbi-kubectl

BINARY_NAME=danbi-kubectl
GO_FILES=$(shell find . -name "*.go" -not -path "./vendor/*")

.PHONY: all build clean test

all: build

GO_BIN=/usr/local/go/bin/go

build:
	@echo "Building $(BINARY_NAME)..."
	$(GO_BIN) build -o $(BINARY_NAME) ./cmd/danbi-kubectl

clean:
	@echo "Cleaning up..."
	rm -f $(BINARY_NAME)

test:
	@echo "Running tests..."
	go test ./... -v
