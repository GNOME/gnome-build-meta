kind: meson
sources:
- kind: tar
  url: gnome_downloads:clutter-gtk/1.8/clutter-gtk-1.8.4.tar.xz
  ref: 521493ec038973c77edcb8bc5eac23eed41645117894aaee7300b2487cb42b06
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
