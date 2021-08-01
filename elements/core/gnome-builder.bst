kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master

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
