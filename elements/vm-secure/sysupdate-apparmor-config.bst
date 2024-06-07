kind: import

sources:
- kind: local
  path: files/sysupdate-apparmor/gnomeos-kernel-apparmor.conf

config:
  # This is an optional extension, which will need to be manually
  # enabled by symlinking the config. into `sysupdate.d`
  target: /usr/lib/sysregistry.d
