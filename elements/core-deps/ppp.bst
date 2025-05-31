kind: autotools

sources:
- kind: tar
  url: samba_pub:ppp/ppp-2.5.2.tar.gz
  ref: 47da358de54a10cb10bf6ff2cf9b1c03c0d3555518f6182e8f701b8e55733cb2
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
