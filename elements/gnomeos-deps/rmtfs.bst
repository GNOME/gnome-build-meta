kind: make

sources:
- kind: git_repo
  url: github:linux-msm/rmtfs.git
  track: 'v*.*'
  ref: v1.3-0-gb30a3eb38f9af283f18dbd3c7755653efc52c094
- kind: local
  path: files/gnomeos/qrtr/condition.conf

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst
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

    - |
      rm "%{install-root}%{indep-libdir}/systemd/system/rmtfs-dir.service"
