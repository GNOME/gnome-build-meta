kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-builder/41/gnome-builder-41.3.tar.xz
  ref: e2250fc8e9e9f2002c452e5950d82685734d3c4480b35167ab508ac8702509e1
- kind: patch
  path: files/gnome-builder/468.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/flatpak-builder.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/pygobject.bst
- sdk/vala.bst

depends:
- core-deps/cmark.bst
- core-deps/flatpak.bst
- core-deps/gspell.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libdazzle.bst
- core-deps/libgit2-glib.bst
- core-deps/libpeas.bst
- core-deps/template-glib.bst
- core-deps/vte.bst
- core/devhelp.bst
- core/gvfs-daemon.bst
- core/sysprof.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dplugin_glade=false
