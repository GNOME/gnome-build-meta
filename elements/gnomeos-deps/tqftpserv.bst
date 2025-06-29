kind: meson

sources:
- kind: git_repo
  url: github:linux-msm/tqftpserv.git
  track: 'v*.*'
  ref: v1.1-0-gf803b4d573006c013fcb4b76af98a363f0904112
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
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
