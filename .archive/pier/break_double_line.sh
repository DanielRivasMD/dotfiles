#!/bin/sh

DARK_BLUE='\033[0;34m'
NC='\033[0m'

for i in {1.."${1}"};
do
  echo -n "${DARK_BLUE}=${NC}"
done
echo ""
