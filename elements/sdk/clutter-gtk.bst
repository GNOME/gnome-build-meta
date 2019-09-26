kind: meson
sources:
- kind: tar
  url: gnome_downloads:clutter-gtk/1.8/clutter-gtk-1.8.4.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
