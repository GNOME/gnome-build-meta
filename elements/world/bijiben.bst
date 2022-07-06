kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-notes.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/tracker.bst
- world/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:bootstrap-import.bst
