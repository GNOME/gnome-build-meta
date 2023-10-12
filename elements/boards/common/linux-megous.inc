sources:
- kind: git_repo
  url: gitlab:pine64-org/linux.git
  track: ppp-6.0.8-ppkb
  ref: ppp-6.0.8-ppkb-0-g7e2bfc1901730a869804c561d065bf9baee317c4
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
