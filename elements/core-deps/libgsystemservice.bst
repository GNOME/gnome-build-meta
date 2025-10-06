kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:pwithnall/libgsystemservice.git
  ref: f4c5764652b5f347347b459ee011e4f02b29c3a0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst

- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: |
    -Dgtk_doc=false
