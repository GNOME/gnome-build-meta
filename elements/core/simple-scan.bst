kind: meson

sources:
- kind: git_repo
  url: gnome:simple-scan.git
  track: master
  ref: 49.0-57-g32fd66a749f1601e7d34e6f4b68194de9db88ad1

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libgusb.bst

runtime-depends:
- core-deps/sane-airscan.bst
