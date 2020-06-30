#!/bin/sh

DARK_GRAY='\033[1;30m'
NC='\033[0m'

for i in {1.."${1}"};
do
  echo -n "${DARK_GRAY}‡${NC}"
done
echo ""
