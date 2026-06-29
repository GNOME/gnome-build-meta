kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/50/gnome-boxes-50.0.tar.xz
  ref: fd6a5de18d1090946ca99f1f5a34aa3e15dc8183f6a72226e8d1504a13672d67
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/libhandy.bst
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libportal.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=int-conversion
