kind: manual

sources:
- kind: git_repo
  url: github:alsa-project/alsa-ucm-conf.git
  track: 'v*'
  ref: v1.2.16.1-0-gc68dcb174f432234dd224a3dc5270fa1f4856afd

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
  - "%{install-extra}"
