kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 48.0.2-1-gb50235b1957d902b8cdd33f164d5a26fc010c150
# FIXME: This needs to be kept in sync with the wrap file ideally,
# but this will do for now
# https://gitlab.gnome.org/GNOME/tecla/-/blob/main/subprojects/libgxdp.wrap?ref_type=heads
- kind: git_repo
  url: gnome:libgxdp.git
  track: main
  directory: subprojects/libgxdp
  ref: e68375c7aced97705953b8e3b30af9f17991153b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
