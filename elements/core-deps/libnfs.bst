kind: autotools

sources:
- kind: git_repo
  url: github:sahlberg/libnfs.git
  track: '*.*'
  ref: libnfs-7.0.0-0-g8563deedbedcbf88130460de4d01fbf68dad58ad

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/gssproxy.bst
