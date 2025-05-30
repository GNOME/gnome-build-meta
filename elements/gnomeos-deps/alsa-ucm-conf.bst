kind: manual

sources:
- kind: tar
  url: github_files:alsa-project/alsa-ucm-conf/archive/b0497ca4b508d6f894d78b16e0e06616a2a36c16.tar.gz
  ref: 5c1afbacbd6ac494d6d3ffebdd98f1ff3757d553a2953bbfc835a81ec1a60347

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -d %{install-root}%{datadir}/alsa
  - cp -r ucm/ ucm2/ %{install-root}%{datadir}/alsa
