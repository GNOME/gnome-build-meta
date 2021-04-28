kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gsound/1.0/gsound-1.0.2.tar.xz
  ref: bba8ff30eea815037e53bee727bbd5f0b6a2e74d452a7711b819a7c444e78e53
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk-doc
