kind: meson

sources:
- kind: git_repo
  url: gnome:libchamplain.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- world/clutter-gtk.bst
- world/clutter.bst
- world/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
