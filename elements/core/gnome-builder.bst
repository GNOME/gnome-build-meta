kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/43/gnome-builder-43.4.tar.xz
  ref: 1e0d6d67845c19bec9e3add59695f9a531d72a0e542b203acc90fb381227c2bc
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/flatpak-builder.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/cmark.bst
- core-deps/editorconfig-core-c.bst
- core-deps/flatpak.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2-glib.bst
- core-deps/libpanel.bst
- core-deps/libpeas.bst
- core-deps/libportal.bst
- core-deps/template-glib.bst
- core-deps/vte.bst
- core/d-spy.bst
- core/gvfs-daemon.bst
- core/sysprof-app.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-5.0.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
