kind: autotools
sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-18-g990b6cc1b8383778b263254ec38aa4e24635e6c4
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
environment:
  CC: gcc -std=c99
config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
