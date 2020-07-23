kind: meson

sources:
- kind: tar
  url: github_com:libfuse/libfuse/releases/download/fuse-3.9.2/fuse-3.9.2.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  meson-local: >-
    -Duseroot=false

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 4755 "${sysroot}%{bindir}/fusermount3"
