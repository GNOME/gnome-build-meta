kind: make

sources:
- kind: git_repo
  url: github:linux-msm/pd-mapper.git
  track: 'v*.*'
  ref: v1.0-0-g9d78fc0c6143c4d1b7198c57be72a6699ce764c4
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/qrtr.bst

variables:
  make-args: >-
    prefix='%{prefix}'

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/pd-mapper.service.d" condition.conf
