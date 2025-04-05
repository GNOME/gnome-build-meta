kind: import

sources:
- kind: local
  path: files/gnomeos/systemd-presets/50-sysupdate.preset

config:
  target: /usr/lib/systemd/system-preset
