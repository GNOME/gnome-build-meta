kind: meson
sources:
- kind: tar
  url: tar_www_spice-space_org:download/releases/spice-protocol-0.14.3.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
