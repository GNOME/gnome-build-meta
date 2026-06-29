kind: meson

sources:
- kind: tar
  url: gnome_downloads:dconf-editor/49/dconf-editor-49.0.tar.xz
  ref: 90a8ccfadf51dff31e0028324fb9a358b2d26c5ae861a71c7dbf9f4dd9bdd399
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core-deps/dconf.bst
- core-deps/libhandy.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
