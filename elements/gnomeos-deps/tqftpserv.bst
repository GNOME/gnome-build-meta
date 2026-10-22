kind: meson

sources:
- kind: git_repo
  url: github:linux-msm/tqftpserv.git
  track: 'v*.*'
  ref: v1.3-0-gb31de6db4f31d09119293203d39636b827f16321
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- gnomeos-deps/qrtr.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/tqftpserv.service.d" condition.conf
