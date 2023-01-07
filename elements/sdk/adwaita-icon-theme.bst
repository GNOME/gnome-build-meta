kind: autotools
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 43-72-gda9dbfd7d7fb387c89f9717fe3c7af10b291c22b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
