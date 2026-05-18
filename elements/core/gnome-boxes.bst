kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-boxes.git
  track: main
  ref: 50.0-21-g9bf8e054cf2a01a581604d10540bb771da999dfc
- kind: git_module
  url: gnome_gitlab:felipeborges/libovf-glib.git
  path: subprojects/libovf-glib
  ref: 52d35970d385d0beda4b765a7264d77e79736549

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libosinfo.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- core-deps/webkit2gtk-4.1.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/libportal.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=int-conversion
