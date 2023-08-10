# layer1_upstream
This contains a downstream test and will be used to host build script for downstream library, https://github.com/mpeddada1/layer1_downstream

## Build docker image
- Call `docker build . -f layer1/docker/Dockerfile -t test-layer1-upstream-three`

## Run downstream tests using built docker image
- Create a branch called `add-new-test`. Make some changes on that branch like adding a new test.
- Run `bash hello/downstream_test.sh` on command line. Verify that the changes in the branch are included. 
