
---
# Day 13 – Linux Recap & Applied Automation

## Goal
Reinforce Linux system awareness and networking concepts by combining them
into a practical, repeatable automation script.

---

## Concepts Reinforced

### From Day 11
- Process awareness (`ps`, `top`)
- CPU vs memory analysis
- Safe process control
- Logs-first mindset

### From Day 12
- DNS vs network vs application failures
- Ordered debugging approach
- Connectivity validation

---

## Automation Script

### Purpose
Capture system state and connectivity before deeper debugging.

### Script: linux_health_check.sh
```bash
#!/bin/bash

echo "========== LINUX HEALTH CHECK =========="
date
echo

echo "Top CPU processes:"
ps aux | sort -nrk 3 | head -5
echo

echo "Top memory processes:"
ps aux | sort -nrk 4 | head -5
echo

echo "DNS check:"
nslookup google.com
echo

echo "Network reachability:"
ping -c 3 google.com
echo

echo "Application check:"
curl -I https://www.google.com
echo

echo "========== END =========="

