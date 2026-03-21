#!/bin/bash

git fetch origin main
echo "cmmt details ::::"
git log origin main --pretty=format:"H - %s"


