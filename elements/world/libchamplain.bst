kind: meson

sources:
- kind: git_tag
  url: gnome:libchamplain.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/libsoup-2.4.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
