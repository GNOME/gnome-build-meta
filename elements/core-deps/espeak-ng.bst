kind: autotools

sources:
- kind: git_repo
  url: github:espeak-ng/espeak-ng.git
  track: '*.*'
  ref: 1.52.0-0-g4870adfa25b1a32b4361592f1be8a40337c58d6c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  notparallel: true

config:
  configure-commands:
    (<):
    # force autogen
    - rm -f configure
