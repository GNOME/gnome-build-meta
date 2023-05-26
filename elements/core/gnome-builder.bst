kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-builder.git
  track: main
  ref: 44.1-81-g59d0703ff6e9f8640e01ab33940dd99fd180f240

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
- core-deps/libdex.bst
- core-deps/libgit2-glib.bst
- core-deps/libpanel.bst
- core-deps/libpeas.bst
- core-deps/libportal.bst
- core-deps/template-glib.bst
- core/d-spy.bst
- core/gvfs-daemon.bst
- core/sysprof-app.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- sdk/libsoup.bst
- sdk/webkitgtk-6.0.bst
- sdk/vte.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
