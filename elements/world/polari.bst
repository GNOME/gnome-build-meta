kind: meson
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/polari.git
  track: main

build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- world/telepathy-logger.bst

depends:
- sdk/gjs.bst
- world/telepathy-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
