kind: import

sources:
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-initrd-modules.conf
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-modules.conf
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-runtime.conf
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-addon.conf

config:
  target: /usr/lib/sysupdate.nvidia.d
