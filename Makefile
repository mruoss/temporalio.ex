.DEFAULT_GOAL := all

protobuf_protos := any duration empty field_mask struct timestamp wrappers
protobuf_src := $(foreach proto,$(protobuf_protos),lib/google_protobuf/${proto}.pb.ex)
temporalio_api_src := $(patsubst src/temporalio_api/temporal/%.proto,lib/temporal/%.pb.ex,$(wildcard src/temporalio_api/temporal/api/*/*/*.proto))

.PHONY: init
init: src/temporalio_api src/protobuf

.PHONY: all
all: ${protobuf_src} ${temporalio_api_src}

src/protobuf:
	REF=`cat src/versions/GOOGLE_PROTOBUF_TAG`; \
	git clone --branch $${REF} "git@github.com:protocolbuffers/protobuf.git" src/protobuf

src/protobuf/src/google/protobuf/%.proto: src/versions/GOOGLE_PROTOBUF_TAG src/protobuf
	REF=`cat src/versions/GOOGLE_PROTOBUF_TAG`; \
	cd src/protobuf \
	git checkout tags/$${REF}

lib/google_protobuf/%.pb.ex: src/protobuf/src/google/protobuf/%.proto
	mkdir -p ./lib/google_protobuf
	protoc -I src/protobuf/src/google/protobuf --elixir_out=plugins=grpc:./lib/google_protobuf $<

src/temporalio_api:
	REF=`cat src/versions/TEMPORALIO_API_TAG`; \
	git clone --branch $${REF} "git@github.com:temporalio/api.git" src/temporalio_api

src/temporalio_api/temporal/%.proto: src/versions/TEMPORALIO_API_TAG src/temporalio_api
	REF=`cat src/versions/TEMPORALIO_API_TAG`; \
	cd src/temporalio_api \
	git checkout tags/$${REF}

lib/temporal/%.pb.ex: src/temporalio_api/temporal/%.proto
	protoc --proto_path=./src/temporalio_api --elixir_out=plugins=grpc:./lib $<
