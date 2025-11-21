kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:pwithnall/libgsystemservice.git
  track: "*.*.*"
  ref: 0.3.0-0-gf4c5764652b5f347347b459ee011e4f02b29c3a0

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
