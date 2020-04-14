kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master
depends:
- core-deps/gspell.bst
- core-deps/libdazzle.bst
- core-deps/glade-libs.bst
- core-deps/libpeas.bst
- core-deps/vte.bst
- core-deps/jsonrpc-glib.bst
- core-deps/libgit2-glib.bst
- core-deps/template-glib.bst
- core/devhelp.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/gvfs.bst
- sdk/librsvg.bst
- sdk/pygobject.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:deploy-tools/flatpak.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dwith_sysmon=false
    -Dplugin_sysprof=false
