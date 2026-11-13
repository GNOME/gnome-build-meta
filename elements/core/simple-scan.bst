kind: meson

sources:
- kind: git_repo
  url: gnome:simple-scan.git
  track: master
  ref: 50.0-69-g74815622e73ac5b62d92f09ef312c139091f903c

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
