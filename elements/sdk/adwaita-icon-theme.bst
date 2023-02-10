kind: autotools
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 43-85-g3d33ab374a053bd27504c0b51d402f4578d92e7e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
