kind: import

sources:
- kind: local
  path: files/sysupdate-snapd/gnomeos-snapd.conf

config:
  target: "%{sysupdatedir}"
