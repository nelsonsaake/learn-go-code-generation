MAKEFLAGS += --no-print-directory

.PHONY: run generate ncommit
.SILENT:
.ONESHELL:

# Using the wildcard function to get all .go files in the current directory
SOURCES := $(wildcard *.go */*.go) 

run:
	make generate

generate:
	go run ./plg/generator/. --schema="./plg/schema/schema.go"

ncommit:
	git add .
	git commit -m "chore: commit everything"
	git push origin main