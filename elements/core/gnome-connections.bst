kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-connections.git
  track: master
  ref: 48.0-22-g778db6b218b0ee923a4466cff392aa16c759237c
- kind: git_module
  url: gnome:gtk-frdp.git
  path: subprojects/gtk-frdp
  ref: a0187fa02e1ff249e9583e8c09a2c2f5915ce2a3

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- core-deps/spice-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
