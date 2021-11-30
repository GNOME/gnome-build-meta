kind: autotools
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/gnome-themes-extra.git
  track: master
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk2-engine
