kind: autotools

sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.4-0-g23696c6117230dccbe22812602b919bc1a592928

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
