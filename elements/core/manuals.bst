kind: meson

sources:
- kind: tar
  url: gnome_downloads:manuals/49/manuals-49.0.tar.xz
  ref: ed6446c4c2d29c2b9062b2a8ca7271cdbacfc78cfdb4fdcd0f3bc48d8c9e7f08
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
