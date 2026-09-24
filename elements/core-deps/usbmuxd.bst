kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/usbmuxd.git
  track: '*.*.*'
  ref: 1.1.1-0-g79c8b38d1488a6b07e1e68f39d8caec3f1a45622
- kind: local
  path: files/usbmuxd/sysusers.conf

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libimobiledevice-glue.bst
- core-deps/libimobiledevice.bst
- core-deps/libusbmuxd.bst
- core-deps/libplist.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-systemdsystemunitdir=%{indep-libdir}/systemd/system
    --runstatedir=/run

config:
  install-commands:
    (>):
    - |
      install -Dm644 sysusers.conf "%{install-root}%{indep-libdir}/sysusers.d/usbmuxd.conf"
