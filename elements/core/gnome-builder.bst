kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-builder/3.36/gnome-builder-3.36.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/pygobject.bst
- sdk/vala.bst
depends:
- core-deps/flatpak.bst
- core-deps/glade-libs.bst
- core-deps/gspell.bst
- core-deps/libdazzle.bst
- core-deps/libpeas.bst
- core-deps/vte.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2-glib.bst
- core-deps/template-glib.bst
- core/devhelp.bst
- core/sysprof.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/gvfs.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/libportal.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
