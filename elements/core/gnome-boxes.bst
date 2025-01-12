kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-boxes/48/gnome-boxes-48.alpha.tar.xz
  ref: 231738236337c7afb28430b624d3363a9bfd9ea3482d7f719cac8950240aec39
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libosinfo.bst
- core-deps/libportal.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  local_flags: >-
    -Wno-error=int-conversion
