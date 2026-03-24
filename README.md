# port-monitoring-script

A Bash monitor that reads host:port entries from a config file and checks TCP connectivity using Bash's /dev/tcp support.

## Key features

- Simple config file format with optional labels
- Per-check timeout control via TIMEOUT_SECS
- Human-readable OK/FAIL output

## Project structure

- `port_monitor.sh` — Main monitoring script

## Requirements

- Bash with /dev/tcp support
- timeout command

## Setup

```bash
git clone https://github.com/biprajit007/port-monitoring-script.git
cd port-monitoring-script
chmod +x port_monitor.sh
```

## Usage

### ports.conf

```conf
localhost:22:local ssh
example.com:443:public https
```

### Run checks

```bash
./port_monitor.sh ports.conf
```

## Limitations / next improvements

- Only basic TCP connectivity is tested
- Config parsing uses colon separators, so labels should not contain colons
