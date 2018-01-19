kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master
depends:
- apps/devhelp.bst
- apps/gnome-code-assistance.bst
- apps/jsonrpc-glib.bst
- apps/libdazzle.bst
- apps/libgit2-glib.bst
- apps/template-glib.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/meson.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- core-deps/vte.bst
- core/gvfs.bst
- base.bst
variables:
  meson-local: -Dwith_sysmon=false -Dwith_sysprof=false
