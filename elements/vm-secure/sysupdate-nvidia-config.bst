kind: import

sources:
- kind: local
  path: files/sysupdate-nvidia/40-gnomeos-nvidia-initrd-modules.conf
- kind: local
  path: files/sysupdate-nvidia/40-gnomeos-nvidia-modules.conf
- kind: local
  path: files/sysupdate-nvidia/40-gnomeos-nvidia-runtime.conf
- kind: local
  path: files/sysupdate-nvidia/40-gnomeos-nvidia-addon.conf

config:
  target: /usr/lib/sysregistry.d
