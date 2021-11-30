kind: meson
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/gnome-tour.git
  track: master
- kind: cargo
build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
