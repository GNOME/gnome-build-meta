kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp/49/yelp-49.0.tar.xz
  ref: e6614e0b1f4ba5fe7b8d149bdd42673f030656fbdcd736ae9860719197c63457
build-depends:
- sdk-deps/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
    split-rules:
      devel:
        (>):
        - '%{libdir}/libyelp.so'
