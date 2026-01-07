# Day 12 – Linux + Networking: Networking Basics

## Goal
Understand how systems communicate and debug connectivity issues by isolating
DNS, network reachability, and application-level failures.

---

## Core Mental Model

DNS → Network Reachability → Port → Application

If one layer fails, everything after it fails.

---

## Commands & Usage

### DNS Resolution
```bash
nslookup domain.com

###  Network Reachability
## ping domain.com
## ping -c 3 domain.com
Verifies network-level connectivity using ICMP.

### Application-Level Check
## curl https://domain.com
## curl -I https://domain.com
Validates whether the application/service is responding

