kind: manual

sources:
- kind: git_repo
  url: github:alsa-project/alsa-ucm-conf.git
  track: 'v*'
  ref: v1.2.15.3-0-g858d3a2443c66a7d5a2b5598308619237e8fc75d

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
  - "%{install-extra}"
