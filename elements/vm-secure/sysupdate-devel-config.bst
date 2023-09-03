kind: import

sources:
- kind: local
  path: files/sysupdate-devel/gnomeos-devel.conf
- kind: local
  path: files/sysupdate-devel/gnomeos-devel-hash.conf

config:
  target: /usr/lib/sysupdate.devel.d
