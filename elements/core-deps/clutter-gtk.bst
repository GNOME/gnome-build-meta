kind: meson
sources:
- kind: git
  url: git_gnome_org:clutter-gtk
  track: master
depends:
- core-deps/clutter.bst
- core-deps/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
