kind: autotools
sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-11-ga0630212417bf55547f046999668a69ae3a3993b
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
environment:
  CC: gcc -std=c99
config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
