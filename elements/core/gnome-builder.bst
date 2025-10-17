kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-builder.git
  track: main
  ref: 49.0-15-gf0c6ad70958ef401a1e01929bf0684e8cb5abf23

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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dprofiling=true
