# Day 14 – Docker Introduction (Foundations)

## Goal
Understand why Docker exists, core Docker concepts, and practice basic image
and container operations.

---

## Why Docker Exists

- Solves “works on my machine” problem
- Ensures consistent environments across:
  - Local development
  - CI/CD pipelines
  - Production servers
- Packages application + dependencies together

---

## Core Concepts

### Image
- Read-only template (blueprint)
- Contains:
  - Application code
  - Dependencies
  - Runtime
  - Minimal OS userland
- Does NOT run by itself

### Container
- Running instance of an image
- Isolated process
- Can be started, stopped, removed
- Multiple containers can run from one image

### Image vs Container

| Image | Container |
|----|----|
| Static | Running |
| Blueprint | Instance |
| Built / pulled | Started / stopped |
| Stored | Executed |

---

## Containers vs Virtual Machines

- Containers share the host OS kernel
- No full guest OS
- Lightweight and fast
- Lower resource usage than VMs

---

## Docker Architecture (High Level)

Application  
↓  
Container  
↓  
Docker Engine  
↓  
Host OS Kernel  

---

## Commands Practiced

### Verify Docker
```bash
docker --version
docker info


docker info
docker images
docker pull nginx
docker run nginx
docker run -d nginx
docker ps
docker ps -a
docker stop <id>
docker rm <id>

