kind: autotools

sources:
- kind: git_repo
  url: github:sahlberg/libnfs.git
  track: '*.*'
  ref: libnfs-8.1.0-0-g5c48d277783073a1be5aa3ce8ff1ca9a690c20a0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/gssproxy.bst
