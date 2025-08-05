kind: meson

sources:
- kind: git_repo
  url: gnome:manuals.git
  track: main
  ref: 49.alpha.1-12-g2e3c49799deed10b5e6aa9b1576799ebbef8dd5c

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
