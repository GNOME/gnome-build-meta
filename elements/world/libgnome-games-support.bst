kind: meson
sources:
- kind: git_tag
  url: gnome:libgnome-games-support.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libgee.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
