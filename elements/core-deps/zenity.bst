kind: meson

sources:
- kind: tar
  url: gnome_downloads:zenity/4.1/zenity-4.1.99.tar.xz
  ref: 6fe2aa313c71e91ffa55b11dbec7904f31a40303e0a3f6016820ff6dee329ee2
build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
