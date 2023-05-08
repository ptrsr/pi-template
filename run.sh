#!/bin/sh
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)/"

if [ -n "$2" ]; then
  ansible-playbook -i $PROJECT_DIR/inv/$1.yml $PROJECT_DIR/src/$2.yml
  return
fi
ansible-playbook -i $PROJECT_DIR/inv/$1.yml $PROJECT_DIR/src/$1.yml
