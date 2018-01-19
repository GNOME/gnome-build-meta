kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-tweak-tool
  track: master
depends:
- core-deps/librsvg.bst
- core-deps/meson.bst
- core-deps/pygobject.bst
- core/gnome-shell.bst
- core/nautilus.bst
- base.bst
