kind: make

sources:
- kind: git_repo
  url: github:linux-msm/pd-mapper.git
  track: 'v*.*'
  ref: v1.1-0-g5ecd2fe926aca7abfe40724177f63b942cff3947
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
