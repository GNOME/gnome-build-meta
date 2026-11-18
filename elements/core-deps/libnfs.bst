kind: autotools

sources:
- kind: git_repo
  url: github:sahlberg/libnfs.git
  track: '*.*'
  ref: libnfs-8.0.1-0-g504caa8c1c249da799b4a3bf88419f10b650e75b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/gssproxy.bst
