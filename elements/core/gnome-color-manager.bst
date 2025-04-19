kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-color-manager.git
  track: master
  ref: 3.36.2-43-g39974a60bc2affbe06e2cb64b8ab6e9df7abd2cb

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
