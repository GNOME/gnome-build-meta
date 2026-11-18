kind: autotools

sources:
- kind: git_repo
  url: github:ppp-project/ppp.git
  track: 'v*.*.*'
  ref: v2.5.5-0-g4dc474cacfa045d1ee1b10c388d8c864e3ed3b30

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
