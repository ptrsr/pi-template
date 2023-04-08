#!/bin/sh
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)/"
ansible-playbook -v -i $PROJECT_DIR/conf/hosts.yml $PROJECT_DIR/src/$2.yml --extra-vars @conf/$1.yml
