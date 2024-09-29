kind: import

config:
  target: /usr/lib/systemd/system/ldconfig.service.d/

sources:
- kind: local
  path: files/vm/always-ldconfig.conf
