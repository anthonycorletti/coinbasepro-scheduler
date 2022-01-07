#!/bin/sh -e

PROJECT_ID=$(gcloud config list --format 'value(core.project)')
VERSION=${VERSION:=latest}
docker run -it -p 8080:8080 gcr.io/${PROJECT_ID}/cbpa:${VERSION} cbpa server
