kind: autotools

sources:
- kind: git_repo
  url: github:ppp-project/ppp.git
  track: 'v*.*.*'
  ref: v2.5.3-0-g4b02040f4838237ecd08852c77acd2c89c32f392

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libpcap.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst

config:
  install-commands:
    (>):
    - mv %{install-root}%{sysconfdir}/ppp %{install-root}%{datadir}/
