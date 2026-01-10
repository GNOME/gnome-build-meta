kind: meson

sources:
- kind: tar
  url: tecnocode:libgsystemservice/libgsystemservice-0.3.0.tar.xz
  ref: b80344beeb12e8cb763f2b6b73efeb6c4916f22ab02f7f2ef56439ac3534e494
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
