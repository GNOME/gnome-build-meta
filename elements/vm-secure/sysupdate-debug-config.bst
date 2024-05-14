kind: import

sources:
- kind: local
  path: files/sysupdate-debug/gnomeos-debug.conf

config:
  target: "%{sysupdatedir}"
