kind: manual

sources:
- kind: git_repo
  url: github:alsa-project/alsa-ucm-conf.git
  track: 'v*'
  ref: v1.2.15.2-0-g5682b16f50e2a6ba8d4361c9ef7810ab534708bf

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
  - "%{install-extra}"
