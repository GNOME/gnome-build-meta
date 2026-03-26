kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.6.tar.xz
  ref: 4d7a5e268698c8e7e40603e36e9e3a2b76133931ce1b637c1136301491b54cc3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
