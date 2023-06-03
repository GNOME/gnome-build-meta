kind: import

sources:
- kind: local
  path: files/sysupdate/gnomeos-usr.conf
- kind: local
  path: files/sysupdate/gnomeos-usr-verity.conf
- kind: local
  path: files/sysupdate/gnomeos-kernel.conf

config:
  target: /usr/lib/sysupdate.d
