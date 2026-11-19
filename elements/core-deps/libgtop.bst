kind: autotools

sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.4-1-g4a82ba23d2c2271609c3a076f53795bbe34cb24f

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
