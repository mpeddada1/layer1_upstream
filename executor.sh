#!/bin/bash

# Use image on docker daemon
# Configure the service account for pulling the docker image.
function repo_root() {
  local dir="$1"
  while [[ ! -d "${dir}/.git" ]]; do
    dir="$(dirname "$dir")"
  done
  echo "${dir}"
}

# Get pwd of the script
pwd
echo "hello printing pwd"
SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"
PROJECT_ROOT="$(repo_root "${SCRIPT_DIR}")"
#
#SCRIPT_DIR=$(cd -- "$(dirname -- "$BASH_SOURCE")"; pwd)
#ROOT_DIR=$(dirname -- "$script_dir")
#echo $SCRIPT_DIR

# take kokoro commit.
# accurately gets the directory of the caller /hello

caller_path=$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)
echo ${caller_path}
root_caller_path="$(repo_root "${caller_path}")"
echo "${root_caller_path}"
echo $PROJECT_ROOT
script_name=$1
docker run --volume "${root_caller_path}":/workspace/ --volume "${PROJECT_ROOT}":/workspace/layer1_upstream --entrypoint "/workspace/${script_name}" --privileged test-layer1-upstream-two