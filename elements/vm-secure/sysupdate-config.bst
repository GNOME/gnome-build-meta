kind: import

sources:
- kind: local
  path: files/sysupdate/81-gnomeos-usr.conf
- kind: local
  path: files/sysupdate/80-gnomeos-usr-verity.conf
- kind: local
  path: files/sysupdate/90-gnomeos-kernel.conf

config:
  target: /usr/lib/sysupdate.d
