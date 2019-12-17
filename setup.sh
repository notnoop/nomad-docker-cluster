#!/usr/bin/env bash

set -x

nomad_version=0.10.2
url="https://releases.hashicorp.com/nomad/${nomad_version}/nomad_${nomad_version}_linux_amd64.zip"

mkdir -p bin/
curl -o ./bin/nomad.zip "${url}"
unzip -d ./bin ./bin/nomad.zip
