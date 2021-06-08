kind: meson
sources:
- kind: tar
  url: gnome_downloads:epiphany/3.38/epiphany-3.38.5.tar.xz
  ref: c6941e2c769d512f09f01b3ef76064ee8a2a6590ee0a5ba57f8b3fc32277af93
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libdazzle.bst
- core-deps/libhandy.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
