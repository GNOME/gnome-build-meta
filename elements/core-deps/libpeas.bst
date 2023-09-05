kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/1.99/libpeas-1.99.1.tar.xz
  ref: f353bdbac0868c54338b067a3a6b845abfa429f1511cdf8056030bee3f2a52fa
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dpython3=true
    -Dlua51=false
    -Dintrospection=true
    -Dvapi=true
    -Dgtk_doc=true
