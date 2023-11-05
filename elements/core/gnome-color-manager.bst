kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-color-manager.git
  track: master
  ref: GNOME_COLOR_MANAGER_3_36_0-56-gfa2fd8d91cc5f490a583390cf2f77acdf9731fe3

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/libcanberra.bst
- core-deps/vte.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst
