kind: import

sources:
- kind: tar
  url: github:alsa-project/alsa-ucm-conf/archive/refs/heads/master.tar.gz
  ref: 5716b90a5a0b869383c8bef94abf7bda7456b4453578ecdb9a6e827e6bbf5e35

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

config:
  target: '%{datadir}/alsa'
