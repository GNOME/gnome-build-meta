kind: meson

sources:
- kind: tar
  url: gnome_downloads:adwaita-fonts/49/adwaita-fonts-49.0.tar.xz
  ref: 3157c620eb5b72b25ab156d194aa4eb223f9870d547fe83fdbdf06d3e7becb37
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

