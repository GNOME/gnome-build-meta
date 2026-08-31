kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-backgrounds.git
  track: main
  ref: 51.beta-4-g08ae8363098e90dea839dc37c47a3d3cb8fa2102

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
