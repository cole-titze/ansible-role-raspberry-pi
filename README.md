# ansible-role-raspberry-pi

Ansible role that configures Raspberry Pis running Debian, Raspbian, or Ubuntu.

## What it does

- Configures `/boot/config.txt` options (GPU memory, USB current)
- Updates and upgrades all APT packages
- Sets timezone to America/Chicago
- Schedules nightly system updates via cron (2:00 AM)
- Schedules nightly Pi-hole update via cron (2:30 AM, only if Pi-hole is installed)
- Enables OLED screen support
- Reboots if required

## Usage

This role is called from `ansible-setup`:

```bash
# All Raspberry Pis
ansible-playbook -i inventories/inventory.ini raspberry-pi-playbooks/setup/raspberry-pi-setup.yml

# Backup Pi only
ansible-playbook -i inventories/inventory.ini raspberry-pi-playbooks/setup/raspberry-pi-backup.yml
```

## Role Variables

See `defaults/main.yml` for configurable boot and rc.local options.
