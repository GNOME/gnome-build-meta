kind: manual

sources:
- kind: git_repo
  url: github:ninja-build/ninja.git
  track: v*
  ref: v1.13.2-0-g3441b633c2fe2c494e958780ba0f4227b1327634

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - install -Dt %{install-root}%{bindir} misc/jobserver_pool.py
