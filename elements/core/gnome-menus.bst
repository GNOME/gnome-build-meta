kind: autotools

sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.38.1-14-g1fda968d53da392487124e9ab45c23c2cc60aafa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
