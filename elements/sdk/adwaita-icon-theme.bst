kind: autotools
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 43-60-g4f8e8dc6961f3a939b65461d9e4c89fb7a37aee2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
