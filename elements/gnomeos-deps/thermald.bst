kind: autotools

sources:
  - kind: git_repo
    url: github:intel/thermal_daemon.git
    track: "v*"
    ref: v2.15.10-0-g88369b42ec523787081b9bf8811b364e2a3d5f2d

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - sdk/gtk-doc.bst

depends:
  - core-deps/upower.bst
  - freedesktop-sdk.bst:components/libevdev.bst
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - sdk/glib.bst

variables:
  conf-local: >-
    --with-systemdsystemunitdir=%{indep-libdir}/systemd/system
