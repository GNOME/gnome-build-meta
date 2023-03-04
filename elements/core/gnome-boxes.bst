kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-boxes.git
  track: main
  ref: 44.beta-32-g8d6f56cc87e5ceef8a701973947a77890866a0e6
  submodules:
    subprojects/libovf-glib:
      checkout: true
      url: gnome_gitlab:felipeborges/libovf-glib.git

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
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
