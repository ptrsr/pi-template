#!/bin/sh
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)/"
ansible-playbook -i $PROJECT_DIR/inv/$1.yml $PROJECT_DIR/src/$3.yml --extra-vars @conf/$2.yml
