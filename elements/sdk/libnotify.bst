kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.12.tar.xz
  ref: 744b2b37508135f8261b755a9debe6e09add421adc75bde930f6e198b70ab46e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocbook_docs=disabled
    -Dman=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnotify.so'
