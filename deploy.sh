#!/usr/bin/env bash
pushd backend
mvn clean package install
popd

pushd k8s
./deploy.sh
popd

pushd hugo
./deploy.sh
popd