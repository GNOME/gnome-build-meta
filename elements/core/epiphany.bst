kind: meson
sources:
- kind: tar
  url: gnome_downloads:epiphany/41/epiphany-41.3.tar.xz
  ref: ba01268ee54f318dfdac2e01eba38a3fc96940c1cbf640ed2613ae29f8bcb9ad
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libdazzle.bst
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
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dsoup2=enabled
