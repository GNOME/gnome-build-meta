kind: meson

sources:
- kind: git_repo
  url: gnome:simple-scan.git
  track: master
  ref: 50.0-61-g9be044cde516fe4071fcb7a4ec88e43e5af77a62

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/colord-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk-extra.bst:components/sane-backends.bst
- freedesktop-sdk.bst:components/libgusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- core-deps/sane-airscan.bst
