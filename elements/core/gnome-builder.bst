kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/47/gnome-builder-47.0.tar.xz
  ref: f700d69ddd0857db4f117ba7c38b1da63d596bab3ade8a14d69978c892f066f3
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
