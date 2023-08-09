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
#SCRIPT_PATH="$(realpath "$0")"
#SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"
#PROJECT_ROOT="$(repo_root "${SCRIPT_DIR}")"

#SCRIPT_DIR=$(cd -- "$(dirname -- "$BASH_SOURCE")"; pwd)
#ROOT_DIR=$(dirname -- "$script_dir")
#echo $SCRIPT_DIR

echo $PROJECT_ROOT
script_name=$1
ENTRYPOINT="bash $script_name"
docker run --volume ${PROJECT_ROOT}:/workspace --entrypoint "/workspace/${script_name}" test-layer1-upstream
