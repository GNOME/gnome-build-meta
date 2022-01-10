kind: meson

sources:
- kind: tar
  url: gnome_downloads:epiphany/42/epiphany-42.alpha.tar.xz
  ref: 6fa9e46d18a481eda21573b3a63e303634caa9b055e1b7d2df42ab62df2a7842
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libdazzle.bst
- core-deps/libportal.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsoup2=enabled
