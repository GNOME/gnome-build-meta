kind: autotools

sources:
- kind: git_repo
  url: gnome:NetworkManager-libreswan.git
  track: '*.*'
  exclude:
  - '*dev*'
  ref: 1.2.31-0-g0bfbe1fae6552e076ad0dc094a76293004f8b07b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk-extra.bst:components/intltool.bst

depends:
- sdk/gtk.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- freedesktop-sdk.bst:components/libnl.bst

runtime-depends:
- gnomeos-deps/libreswan.bst

variables:
  conf-local: >-
    --with-gtk4
