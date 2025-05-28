kind: meson

sources:
- kind: git_repo
  url: gnome:manuals.git
  track: main
  ref: 48.0-43-gb00a3154e0d7013cdfb27f326fae500a4dec942a

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/foundry.bst
- core-deps/gom.bst
- sdk-deps/libpanel.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:bootstrap-import.bst
