kind: autotools

sources:
- kind: tar
  url: tar_people_freedesktop_org:/~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/glib.bst
- core-deps/intltool.bst
