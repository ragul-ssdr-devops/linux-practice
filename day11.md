# Day 11 – Linux + Networking: System Awareness

## Objective
Build system awareness to safely observe, analyze, and act on running processes.
Learn how real operators diagnose performance issues before taking action.

---

## Core Concepts Learned

### Processes vs Services
- A **process** is a running instance of a program with a PID.
- A **service** is a managed process, usually started and supervised by the system.
- Killing a process blindly can cause instability or data loss.

### Process Ownership & Control
- `PID` identifies the process.
- `PPID` identifies who started the process.
  - `PPID = 1` → system-managed process (service / daemon)
  - `PPID ≠ 1` → user process or child of another application
- Ownership and parent process decide **how** a process should be controlled.

---

## Commands Practiced

### System Observation
```bash
top
## Process Listing
ps aux
Snapshot of all running processes
## Sort by CPU
ps aux | sort -nrk 3 | head
## Sort by Memory
ps aux | sort -nrk 4 | head

## Inspect a Specific Process (Targeted Debugging)
ps -p <PID> -o pid,ppid,user,%cpu,%mem,command
-p → select process by PID
-o → custom output format
Common fields used:
pid → process ID
ppid → parent process ID
user → owner
%cpu → CPU usage
%mem → memory usage
command → executable path

Process Control (Signals)
## Graceful Stop (Preferred)
kill -15 <PID>
# or
kill <PID>
Allows cleanup and safe shutdown
## Force Kill (Last Resort)
kill -9 <PID>
Immediate termination
No cleanup
Can cause corruption or instability
Rule: Never use kill -9 first.

## Log commands
tail -n 50 logfile
tail -f logfile
less logfile

## Log check using grep filtering - global regular expression print
grep ERROR logfile
grep -i error logfile
tail -f logfile | grep ERROR

