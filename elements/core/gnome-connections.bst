kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-connections.git
  track: master
  ref: 50.beta-4-g6c2e7791f49e6d3754bd84e5b6537b88b5388db9
- kind: git_module
  url: gnome:gtk-frdp.git
  path: subprojects/gtk-frdp
  ref: 692af7f21aadd9ca6939c3f0d527ae71b9e20f7a

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
