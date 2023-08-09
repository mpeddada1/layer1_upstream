#!/bin/bash

git checkout add-new-test
git ls-tree -r add-new-test
#cd hello
# mount contents of branch onto container
# git clone -branch downstream repo
# use directory of that repo onto the
#git clone git@github.com:googleapis/java-shared-config.git

#cd java-shared-config
#ls
# Tests in java-shared-config will run.
bash ~/IdeaProjects/native-image-experiments/layer1_upstream/executor.sh repo_tests.sh
