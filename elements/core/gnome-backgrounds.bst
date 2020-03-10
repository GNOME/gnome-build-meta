kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.36/gnome-backgrounds-3.36.0.tar.xz
  ref: b8cb81e4cf9d085fbb23540635b492d5c124a1f8611c2aa9ac6384111d77bb0b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
