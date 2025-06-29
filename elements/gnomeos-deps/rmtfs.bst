kind: make

sources:
- kind: git_repo
  url: github:linux-msm/rmtfs.git
  track: 'v*.*'
  ref: v1.1-0-ge4e6212c862850c32a452058612110e52c4c68f2
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- gnomeos-deps/qrtr.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/rmtfs.service.d" condition.conf
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system/rmtfs-dir.service.d" condition.conf
