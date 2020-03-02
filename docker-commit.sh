#!/bin/sh

docker commit $(docker ps --filter "name=simplicity-studio" --quiet) simplicity-studio
