kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-color-manager.git
  track: master
  ref: 3.36.2-94-g63c33085bb2778785e26f8827b63dfa3957454fd

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
