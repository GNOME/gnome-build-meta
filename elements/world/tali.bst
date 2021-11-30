kind: meson
sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/tali.git
  track: master

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
