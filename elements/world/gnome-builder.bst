kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-3.bst
- core-deps/libdazzle.bst
- core-deps/libpeas.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/librsvg.bst
- sdk/pygobject.bst
- sdk/vala.bst
- sdk/vte.bst
- world/devhelp.bst
- world/gnome-code-assistance.bst
- world/jsonrpc-glib.bst
- world/libgit2-glib.bst
- world/template-glib.bst
- base.bst
variables:
  meson-local: -Dwith_sysmon=false -Dwith_sysprof=false
