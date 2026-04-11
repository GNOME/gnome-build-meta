kind: autotools

sources:
- kind: git_repo
  url: github:ppp-project/ppp.git
  track: 'v*.*.*'
  ref: v2.5.2-0-g9f612dc02c34509f062ed63b60bcc7e937e25178
- kind: patch
  path: patches/ppp/gcc15.patch

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
