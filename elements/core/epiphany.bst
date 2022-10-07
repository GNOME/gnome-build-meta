kind: meson

sources:
- kind: git_tag
  url: gnome:epiphany.git
  track: master
  ref: 43.0-17-g084ddc4970e1d254315a62b2c3079f117f64c9a4

build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libdazzle.bst
- core-deps/libportal.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr-3.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
