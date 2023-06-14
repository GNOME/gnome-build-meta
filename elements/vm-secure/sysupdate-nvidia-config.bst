kind: import

sources:
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-initrd-modules.conf
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-modules.conf
- kind: local
  path: files/sysupdate-nvidia/gnomeos-nvidia-runtime.conf

config:
  target: /usr/lib/sysupdate.nvidia.d
