#!/bin/bash

keys=($(jq -r '.[]' sxhkdrc.json | grep -e "group" -e "description" -e "command"))

echo $keys

#jq -r '.[]' sxhkdrc.json | grep -e "group" -e "description" -e  "command"


