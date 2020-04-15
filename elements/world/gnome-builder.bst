kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master
depends:
- core-deps/flatpak.bst
- core-deps/gspell.bst
- core-deps/libdazzle.bst
- core-deps/libpeas.bst
- core-deps/vte.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/gvfs.bst
- sdk/librsvg.bst
- sdk/pygobject.bst
- sdk/vala.bst
- world/devhelp.bst
- world/glade.bst
- world/gnome-code-assistance.bst
- world/jsonrpc-glib.bst
- world/libgit2-glib.bst
- world/libportal.bst
- world/template-glib.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dwith_sysmon=false
    -Dplugin_sysprof=false
