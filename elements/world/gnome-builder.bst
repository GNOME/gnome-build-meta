kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-builder.git
  track: master
depends:
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libdazzle.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- core-deps/vte.bst
- core/gvfs.bst
- world/devhelp.bst
- world/gnome-code-assistance.bst
- world/jsonrpc-glib.bst
- world/libgit2-glib.bst
- world/template-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dwith_sysmon=false -Dwith_sysprof=false
