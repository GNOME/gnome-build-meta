kind: autotools
sources:
- kind: git_tag
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 43-70-gbf6073c37d02215e47c1acbb6861ac020873dd09
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
