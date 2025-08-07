kind: meson

sources:
- kind: tar
  url: gnome_downloads:manuals/49/manuals-49.alpha.1.tar.xz
  ref: 37bf7a1aff8dab140eb00e9df35d15bbcac1ffbab1a806f2b10b9f850a65a5d2
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
