kind: autotools

sources:
- kind: anitya
  project-id: 113
  url: netfilter_pub:ebtables/ebtables-{version}.tar.gz
  ref:
    version: 2.0.11
    sha256sum: b71f654784a726329f88b412ef7b96b4e5d786ed2bd28193ed7b4c0d677dfd2a
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - rm '%{install-root}%{sysconfdir}/ethertypes'
