kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/50/gnome-console-50.rc.tar.xz
  ref: 83a83316124dab0a71b53d70c91560b9ace25a8e24c10c19fd1f1ee6397c6d0e
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
