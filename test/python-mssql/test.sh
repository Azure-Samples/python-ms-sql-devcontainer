#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "python-mssql" [ $(cat /tmp/python-mssql.txt | grep 3.11-bullseye) ]

# Report result
reportResults
