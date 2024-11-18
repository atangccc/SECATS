#!/bin/bash

if [ ! -d "$(pwd)/samples" ]; then
  echo "Error: samples directory not exist!"
  exit 1
fi

if [ ! -f "$(pwd)/constants.json" ]; then
  echo "Error: constants.json file not exist!"
  exit 1
fi

docker run --network host -it --rm \
  -v "$(pwd)/samples:/app/samples" \
  -v "$(pwd)/constants.json:/app/constants.json" \
  secats:latest
