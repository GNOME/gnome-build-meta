kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/system" \
          hexagonrpcd-adsp-rootpd.service \
          hexagonrpcd-adsp-sensorpd.service \
          hexagonrpcd-sdsp.service


    - |
      install -Dm644 fastrpc.rules "%{install-root}%{indep-libdir}/udev/rules.d/80-fastrpc.rules"

    - |
      install -Dm755 -t "%{install-root}%{indep-libdir}/systemd/system-generators" hexagonrpcd-generator

sources:
- kind: git_repo
  url: github:linux-msm/hexagonrpc.git
  track: 'v*'
  ref: v0.4.0-0-g23a69640bf10dc498226c602c5b5db11d8cb3d8e
- kind: local
  path: files/hexagonrpc/hexagonrpcd-adsp-rootpd.service
- kind: local
  path: files/hexagonrpc/hexagonrpcd-adsp-sensorpd.service
- kind: local
  path: files/hexagonrpc/hexagonrpcd-sdsp.service
- kind: local
  path: files/hexagonrpc/fastrpc.rules
- kind: local
  path: files/hexagonrpc/hexagonrpcd-generator
