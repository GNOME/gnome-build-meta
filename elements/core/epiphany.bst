kind: meson

sources:
- kind: git_tag
  url: gnome:epiphany.git
  track: master
  ref: 43.0-59-g6ce6a03e40612d4b51dd39c1f8dda2f2f3d6f520

build-depends:
- sdk/appstream-glib.bst
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
- sdk/webkit2gtk-5.0.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
