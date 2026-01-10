kind: meson

sources:
- kind: tar
  url: gnome_downloads:libgsystemservice/0.2/libgsystemservice-0.2.0.tar.xz
  ref: 0a8d933ef3413a64e356afd6444b9d4affcd5bfa8658113cd890c1c733a6b2a1
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
