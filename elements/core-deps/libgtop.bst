kind: autotools
sources:
- kind: git_tag
  url: gnome:libgtop.git
  track: master
  ref: 2.40.0-92-g66721198b640a241c2c666e0f628a665b4bf8c23
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  CC: gcc -std=c99
config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
