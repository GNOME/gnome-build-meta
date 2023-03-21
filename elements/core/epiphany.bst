kind: meson

sources:
- kind: tar
  url: gnome_downloads:epiphany/43/epiphany-43.1.tar.xz
  ref: e86ead27cb9982815150664de3bf20faf375f77b8065b02b31180c65b6bbebb4
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
