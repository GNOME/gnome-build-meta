kind: autotools

sources:
- kind: git_repo
  url: github:intel/thermal_daemon.git
  track: "v*"
  ref: v2.5.13-0-g5fdc5bbca7f8c3f5bb2ad6540e8211a159a88a3a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gtk-doc.bst

depends:
- core-deps/upower.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- sdk/glib.bst

variables:
  conf-local: >-
    --with-systemdsystemunitdir=%{indep-libdir}/systemd/system
