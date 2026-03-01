kind: meson

sources:
- kind: tar
  url: gnome_downloads:foundry/1.1/foundry-1.1.rc.tar.xz
  ref: 39c22df83e471f08b76404ccb428fc7dcf3a5700e08327e1c6dc8f04db5823c4
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/cmark.bst
- core-deps/editorconfig-core-c.bst
- core-deps/gom.bst
- core-deps/libgit2.bst
- core-deps/libpeas.bst
- core-deps/libspelling.bst
- core-deps/template-glib.bst
- core-deps/vte.bst
- sdk-deps/libpanel.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
