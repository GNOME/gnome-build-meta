kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-builder/3.38/gnome-builder-3.38.2.tar.xz
  ref: 8c535ca3ae32a190b54d96d32071957fec01618407a3625188c6451e7833613b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- core-deps/flatpak-builder.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/pygobject.bst
- sdk/vala.bst
depends:
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
- sdk/gtksourceview.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dplugin_glade=false
