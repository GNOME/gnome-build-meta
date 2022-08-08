kind: meson

sources:
- kind: tar
  url: gnome_downloads:epiphany/42/epiphany-42.4.tar.xz
  ref: 370938ad2920eeb28bc2435944776b7ba55a0e2ede65836f79818cfb7e8f0860
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
