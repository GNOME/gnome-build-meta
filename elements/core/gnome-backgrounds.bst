kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.37/gnome-backgrounds-3.37.2.tar.xz
  ref: 4a2cb86ff96a650eb04101c2a1bb0aefc03b35877f423131378f4c0fdf03db68
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
