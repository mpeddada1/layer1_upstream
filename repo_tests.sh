#!/bin/bash

echo "*********RUNNING TEST ***********"
pwd
ls
echo "*********PRINTING WORKSPACE ***********"

ls /workspace
mvn test
