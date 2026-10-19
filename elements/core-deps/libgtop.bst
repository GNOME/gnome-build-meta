kind: autotools

sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-22-g08f874e7286f3e471ea6dd276813b1ccd818db93

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
