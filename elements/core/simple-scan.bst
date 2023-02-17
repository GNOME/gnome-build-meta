kind: meson
sources:
- kind: git_tag
  url: gnome:simple-scan.git
  track: master
  ref: 42.5-69-g84cb571c1d88792d536733260e41f444b4d99ab7
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
