kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/41/gnome-tour-41.rc.tar.xz
  ref: 5220bf9b2e066e1ef333b99ded82e751a4ea2e4ec0b7d79755031179f5e2144b
build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
