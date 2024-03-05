kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/46/gnome-builder-46.beta.tar.xz
  ref: bb79234577df534cee61feebdfa44a7805177ec7dbc99d91d84daf421979a092

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
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2-glib.bst
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
