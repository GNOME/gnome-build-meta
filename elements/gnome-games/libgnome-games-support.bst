kind: meson
sources:
- kind: git_repo
  url: gnome:libgnome-games-support.git
  track: master

  ref: 2.0.0-4-geed8dd5820b6f155d86b1e1f0572ad2f9e305a1e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
