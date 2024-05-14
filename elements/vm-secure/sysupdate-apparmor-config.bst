kind: import

sources:
- kind: local
  path: files/sysupdate-apparmor/gnomeos-kernel-apparmor.conf

config:
  # This will be shipped in `/usr/share/factory/etc` and will
  # need to be manually enabled
  target: "%{sysconfdir}/sysupdate.d"
