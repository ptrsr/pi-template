#!/bin/sh
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)/../"

ansible-playbook -v -i $PROJECT_DIR/.pi-ci/hosts.yml $PROJECT_DIR/.pi-ci/init.yml
