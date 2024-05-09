kind: autotools
sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-4-g43d19428df5ada254e325f31616724d1a31929b1
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
