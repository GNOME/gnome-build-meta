kind: meson

sources:
- kind: git_repo
  url: github:linux-msm/qbootctl.git
  track: '*.*'
  ref: 0.2.2-0-g39a6e6daaf029fb0a083777679a15ea2c18f72de
- kind: local
  path: files/qbootctl/qbootctl-mark-successful.service

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' qbootctl-mark-successful.service
      mkdir -p '%{install-root}%{indep-libdir}/systemd/system/basic.target.wants'
      ln -s ../qbootctl-mark-successful.service '%{install-root}%{indep-libdir}/systemd/system/basic.target.wants/qbootctl-mark-successful.service'
