kind: autotools

sources:
- kind: git_repo
  url: github:ppp-project/ppp.git
  track: 'v*.*.*'
  ref: v2.5.4-0-g28a7472ef74569c011e8909aab889eeefa4bf720

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- core-deps/libpcap.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst

config:
  install-commands:
    (>):
    - mv %{install-root}%{sysconfdir}/ppp %{install-root}%{datadir}/
