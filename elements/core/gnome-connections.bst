kind: meson

sources:
- kind: git_repo
  url: gnome:connections.git
  track: master
  ref: 46.0-0-g3563cf21f086adaa68b5ed19fb7a25ec01e353ab
- kind: git_module
  url: gnome:gtk-frdp.git
  path: subprojects/gtk-frdp
  ref: 97e166b7f2970ea5b723352fabac732cd6a0f41c

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
