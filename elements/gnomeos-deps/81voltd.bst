kind: meson

sources:
- kind: git_repo
  url: postmarketos:modem/81voltd.git
  track: v*
  ref: v1.2.0-0-g7c0cd9442d71b55260c9917c89ebc4bd20e283a8
- kind: local
  path: files/81voltd/81voltd.service

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- gnomeos-deps/qrtr.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system" 81voltd.service
