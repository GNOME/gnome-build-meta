kind: import

sources:
- kind: local
  path: files/sysupdate-user/gnomeos-usr.conf
- kind: local
  path: files/sysupdate-user/gnomeos-usr-verity.conf
- kind: local
  path: files/sysupdate-user/gnomeos-kernel.conf

config:
  target: /usr/lib/sysupdate.user.d
