kind: import

sources:
- kind: local
  path: files/sysupdate-apparmor/gnomeos-kernel-apparmor.conf

config:
  target: /usr/lib/sysupdate.apparmor.d
