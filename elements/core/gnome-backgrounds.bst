kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 51.0-17-g600c5348d674a24f12c11902225f2a630fe4594f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
