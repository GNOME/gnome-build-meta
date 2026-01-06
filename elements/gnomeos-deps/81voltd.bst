kind: meson

sources:
- kind: git_repo
  url: postmarketos:modem/81voltd.git
  track: v*
  ref: v1.0.0-2-g7d3b9a533a4bbe35598bb3dca8ed15647593d808
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
