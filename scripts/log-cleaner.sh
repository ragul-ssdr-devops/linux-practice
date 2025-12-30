#!/usr/bin/env bash

echo "Listing log files older than 2 days"
find . -name "*.log" -mtime +2
