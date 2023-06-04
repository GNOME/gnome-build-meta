kind: import

sources:
- kind: local
  path: files/vm/iscsi-config/50-iscsi.preset

config:
  target: /usr/lib/systemd/system-preset
