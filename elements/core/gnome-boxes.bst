kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-boxes.git
  track: main
  ref: 44.beta-57-g3163f4bfe8ae5b64cee14409fe2df2c77142df93
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
