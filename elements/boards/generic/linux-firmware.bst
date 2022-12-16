kind: import

sources:
- kind: git_tag
  url: https://megous.com/git/linux-firmware
  track: master
  ref: 5c4c2b89f30a42f5ffabb5b5bcbc799d8ac9f66f

config:
  source: /

  target: /workspace/megous.com/orangepi-pc/firmware
