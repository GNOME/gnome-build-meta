kind: manual

sources:
- kind: git_repo
  url: github:alsa-project/alsa-ucm-conf.git
  track: 'v*'
  ref: v1.2.15.1-0-g5d175e1f7e3df15973945a9cc15e82fa7ca0d7b6

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
  - "%{install-extra}"
