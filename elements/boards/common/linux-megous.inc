sources:
- kind: git_tag
  url: github:sailfish-on-dontbeevil/kernel-megi.git
  track: orange-pi-6.0
  ref: orange-pi-6.0-20221105-1830-0-g7f305ec5ef634004d64fdd9b41044fe0bce7f397
- kind: local
  path: files/linux/config-utils.sh
- kind: patch
  path: files/linux/0001-riscv-sifive-fu740-cpu-1-2-3-4-set-compatible-to-sif.patch
- kind: patch
  path: files/linux/0002-arm64-dts-rk3399-pinephone-pro-Remove-modem-node.patch
- kind: patch
  path: files/linux/0003-arm64-dts-rk3399-pinephone-pro-add-modem-RI-pin.patch
- kind: patch
  path: files/linux/0004-dts-pinephone-drop-modem-power-node.patch
