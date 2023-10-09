kind: import

sources:
- kind: git_repo
  url: gnome_gitlab:tanvirroshid/linux-firmware.git
  track: master
  ref: 7fbeed5ba70617bfb6196a924e8a55952f1f50aa

config:
  source: /

  target: /workspace/megous.com/orangepi-pc/firmware
