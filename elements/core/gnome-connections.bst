kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-connections.git
  track: master
  ref: 51.0-1-g1fce34d5e5f29f1034f467660bbf37e844ba70d1
- kind: git_module
  url: gnome:gtk-frdp.git
  path: subprojects/gtk-frdp
  ref: 83854a24e31d1c07519f6e4393fe280d3b59e080

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/freerdp.bst
- core-deps/gtk-vnc.bst
- core-deps/libhandy.bst
- core-deps/spice-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
