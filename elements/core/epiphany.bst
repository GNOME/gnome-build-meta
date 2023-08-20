kind: meson

sources:
- kind: git_tag
  url: gnome:epiphany.git
  track: master
  ref: 45.beta-29-g9a8e09db9d2837e9d40c03c8e7967cee3220bc15

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libportal.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
