kind: import

sources:
- kind: local
  path: files/gnomeos/iscsi-config/50-iscsi.preset

config:
  target: /usr/lib/systemd/system-preset
