kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/49/gnome-console-49.2.tar.xz
  ref: 27b02ce8e890ff8f53ca85db786b1ae35903f0b6327812f0224dc0b54b1088db
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
