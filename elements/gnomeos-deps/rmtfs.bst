kind: make

sources:
- kind: git_repo
  url: github:linux-msm/rmtfs.git
  track: 'v*.*'
  ref: v1.1.1-0-g44facf5694036ebda53fd09c9535774982df5247
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- gnomeos-deps/qrtr.bst

variables:
  make-args: >-
    prefix='%{prefix}'

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/rmtfs.service.d" condition.conf
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/rmtfs-dir.service.d" condition.conf
