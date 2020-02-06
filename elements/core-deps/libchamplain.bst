kind: meson
sources:
- kind: tar
  url: gnome_downloads:libchamplain/0.12/libchamplain-0.12.20.tar.xz
  ref: 0232b4bfcd130a1c5bda7b6aec266bf2d06e701e8093df1886f1e26bc1ba3066
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
