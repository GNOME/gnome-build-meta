kind: import

sources:
- kind: local
  path: files/vm/sysupdate-component/systemd-sysupdate-component@.service
- kind: local
  path: files/vm/sysupdate-component/lock.conf
  directory: systemd-sysupdate.service.d

config:
  target: /usr/lib/systemd/system

