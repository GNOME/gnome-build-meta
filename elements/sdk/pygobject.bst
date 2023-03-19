kind: meson

sources:
- kind: tar
  url: gnome_downloads:pygobject/3.44/pygobject-3.44.0.tar.xz
  ref: f6863d6a3b70d9ace4c36a9901d39e42c8801d11309ca2a8b3459d1c24e34b7f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
