kind: autotools

sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-28-ge31a8d45dfd76f3fac5794e603d95c45e4921fc7

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

environment:
  CC: gcc -std=c99
