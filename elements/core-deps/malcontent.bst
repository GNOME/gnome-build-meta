kind: meson

sources:
- kind: tar
  url: tecnocode:malcontent/malcontent-0.14.alpha.tar.xz
  ref: 60eb2d95cfb08278205723e0fde4033b44163f424a14c888dfe883d4471e29b1
- kind: remote
  url: corpit:tinycdb/tinycdb-0.81.tar.gz
  ref: 469de2d445bf54880f652f4b6dc95c7cdf6f5502c35524a45b2122d70d47ebc2
  directory: subprojects/packagecache

build-depends:
- core-deps/glib-testing.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/libgsystemservice.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- sdk/pygobject.bst
