#!/bin/bash -e

cmd="./scripts/update-metadata-yaml.sh"
updates=(
	"splunk-otel-java"
	"splunk-otel-dotnet"
)

for args in "${updates[@]}"; do
  echo "> $cmd $args"
  $cmd $args
  echo
done
