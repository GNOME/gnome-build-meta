kind: autotools

sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-19-ge220052365b9f5f9e4d66d0edaa6ba16a0eec6d6

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

config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
