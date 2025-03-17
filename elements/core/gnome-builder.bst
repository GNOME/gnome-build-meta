kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/48/gnome-builder-48.0.tar.xz
  ref: 7afe9a7a3b3c6621768bc46a61d698dd788b3653fb46a708238bdccf4de67ba4
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/flatpak-builder.bst

depends:
- core-deps/cmark.bst
- core-deps/editorconfig-core-c.bst
- core-deps/gom.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2-glib.bst
- core-deps/libpeas.bst
- core-deps/libportal.bst
- core-deps/libspelling.bst
- core-deps/template-glib.bst
- core-deps/vte.bst
- core/d-spy.bst
- core/gvfs-daemon.bst
- core/sysprof-app.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/librsvg.bst
- sdk/libsoup.bst
- sdk/webkitgtk-6.0.bst
- sdk-deps/libpanel.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
