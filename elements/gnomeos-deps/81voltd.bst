kind: meson

sources:
- kind: git_repo
  url: postmarketos:modem/81voltd.git
  track: v*
  ref: v1.1.0-0-g67ef50a2877287603b845680e05dac444301b73d
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
