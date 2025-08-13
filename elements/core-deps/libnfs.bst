kind: autotools

sources:
- kind: tar
  url: github_files:sahlberg/libnfs/archive/refs/tags/libnfs-6.0.2.tar.gz
  ref: 4e5459cc3e0242447879004e9ad28286d4d27daa42cbdcde423248fad911e747

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/gssproxy.bst
