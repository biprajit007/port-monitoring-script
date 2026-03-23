# Port Monitoring Script

Checks configured TCP ports and prints a simple status report.

## Features
- Multi-host config file
- Timeout control
- Human-friendly labels
- Easy to wrap with alerting tools

## Usage
```bash
cp ports.conf.example ports.conf
./port_monitor.sh ports.conf
```

## Disclaimer
Monitoring only; no active remediation is performed.
