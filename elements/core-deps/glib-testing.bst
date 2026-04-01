kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:pwithnall/libglib-testing.git
  track: "*.*.*"
  ref: 0.2.0-0-g3195a83d703acfaf93bc0663ec3d183e1c03cf8e

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
