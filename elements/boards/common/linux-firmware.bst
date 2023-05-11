kind: import

sources:
- kind: git_tag
  url: megous:git/linux-firmware
  track: master
  ref: 0510074346983ad33b3d52ce8f5d6a8f89a564a8

config:
  source: /

  target: /workspace/megous.com/orangepi-pc/firmware
