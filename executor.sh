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

caller_path=$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)
echo ${caller_path}
root_caller_path="$(repo_root "${caller_path}")"
echo "${root_caller_path}"
script_name=$1

# Mount contents of the caller onto container and execute.
docker run --volume "${root_caller_path}":/workspace/ --entrypoint "/workspace/${script_name}" --privileged test-layer1-upstream-two