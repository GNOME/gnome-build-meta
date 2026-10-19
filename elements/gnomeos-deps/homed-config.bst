kind: import

sources:
- kind: local
  path: files/gnomeos/homed-config/90-force-subvolume.conf

config:
  target: /usr/lib/systemd/homed.conf.d/
