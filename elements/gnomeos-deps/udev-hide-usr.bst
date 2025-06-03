kind: import

sources:
- kind: local
  path: files/gnomeos/udev/91-hide-usr.rules

config:
  target: /usr/lib/udev/rules.d
