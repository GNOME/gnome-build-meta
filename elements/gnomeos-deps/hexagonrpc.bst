kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system" hexagonrpcd-adsp.service hexagonrpcd-sdsp.service

sources:
- kind: git_repo
  url: github:linux-msm/hexagonrpc.git
  track: 'v*'
  ref: v0.3.2-0-gb7eff23db1b11541d11175bd3f42bd4c85214baf
- kind: local
  path: files/hexagonrpc/hexagonrpcd-adsp.service
- kind: local
  path: files/hexagonrpc/hexagonrpcd-sdsp.service
