kind: manual

sources:
- kind: git_repo
  url: github:alsa-project/alsa-ucm-conf.git
  track: 'v*'
  ref: v1.2.16-0-g9cbe98256fe7077c05f92ac561be12ae56825b12

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
  - "%{install-extra}"
