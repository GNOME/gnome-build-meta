kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.4/libshumate-1.4.beta.tar.xz
  ref: 2535feddc17975c063859c52fc096ee7249cee0344e635b087bbe47166ef603b
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
