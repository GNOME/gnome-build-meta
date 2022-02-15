kind: autotools
sources:
- kind: tar
  url: gnome_downloads:adwaita-icon-theme/42/adwaita-icon-theme-42.beta.tar.xz
  ref: 94093771c9d93cd87ee6b41a364a07f7d79118d5d9ce9c06013056277b1c0805
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
