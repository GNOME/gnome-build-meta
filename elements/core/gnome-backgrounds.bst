kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 44.0-4-g55eae451f99fc2bdc95cd5ec2a9d65fe968e7668

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
