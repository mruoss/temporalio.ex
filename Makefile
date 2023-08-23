.DEFAULT_GOAL := all

temporalio_api_src := $(patsubst src/temporalio_api/temporal/%.proto,lib/temporal/%.pb.ex,$(wildcard src/temporalio_api/temporal/api/*/*/*.proto))

.PHONY: init
init: 
	REF=$$(cd src/temporalio_api && git describe --tags `git rev-list --tags --max-count=1`); \
	(cd src/temporalio_api && git checkout $${REF})

.PHONY: all
all: ${temporalio_api_src} 

lib/temporal/%.pb.ex: src/temporalio_api/temporal/%.proto
	ERL_AFLAGS='-kernel standard_io_encoding latin1' protoc --proto_path=./src/temporalio_api --proto_path=./src/googleapis --elixir_out=plugins=grpc:./lib $<
