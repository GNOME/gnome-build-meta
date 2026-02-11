kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 50.alpha-10-gddf193f9ac98f4dfdd21c6b2d5fa7bc5e866f503

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
