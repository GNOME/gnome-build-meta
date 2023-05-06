kind: meson
sources:
- kind: git_tag
  url: gnome:polari.git
  track: main
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- core-deps/libsoup-2.4.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- world/telepathy-logger.bst
depends:
- sdk/gjs.bst
- world/telepathy-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
