#!/usr/bin/env bash
pushd k8s
./deploy.sh
popd

pushd hugo
./deploy.sh
popd