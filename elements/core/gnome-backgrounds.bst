kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/42/gnome-backgrounds-42.0.tar.xz
  ref: 4c7fe1a09f459c5f77189a5982524fce05d888944955d679910f234606c1295d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
