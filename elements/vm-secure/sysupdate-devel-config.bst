kind: import

sources:
- kind: local
  path: files/sysupdate-devel/gnomeos-usr.conf
- kind: local
  path: files/sysupdate-devel/gnomeos-usr-verity.conf
- kind: local
  path: files/sysupdate-devel/gnomeos-kernel.conf

config:
  target: /usr/lib/sysupdate.devel.d
