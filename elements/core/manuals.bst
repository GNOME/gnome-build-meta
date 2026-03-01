kind: meson

sources:
- kind: tar
  url: gnome_downloads:manuals/50/manuals-50.rc.tar.xz
  ref: 30acd5e6cb70f8d5415cdd51898605209cf9c9ded0856f474c2dcd5831ddba77
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/foundry.bst
- core-deps/gom.bst
- sdk-deps/libpanel.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
