sources:
- kind: git_tag
  url: github:megous/linux.git
  track: orange-pi-6.0
  ref: orange-pi-6.0-20221111-0002-916-gbb505b76761d1f196fc3e3948e756fc1583ff2e5
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