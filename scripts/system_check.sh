#!/bin/bash

echo "===== SYSTEM CHECK ====="
date
echo

echo "Top CPU processes:"
ps aux | sort -nrk 3 | head -5
echo

echo "Network check (google.com):"
ping -c 3 google.com
echo

echo "Application check (HTTP):"
curl -I https://www.google.com
echo

echo "===== END ====="

