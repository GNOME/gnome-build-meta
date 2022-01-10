kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/3.34/gnome-bluetooth-3.34.5.tar.xz
  ref: 6c949e52c8becc2054daacd604901f66ce5cf709a5fa91c4bb7cacc939b53ea9
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # Disable sendto as the binary is not namespaced
  # and overlaps with gnome-bluetooth-2.0
  meson-local: >-
    -Dgtk_doc=true
    -Dsendto=false
