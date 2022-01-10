kind: autotools

sources:
- kind: tar
  url: gnome_downloads:yelp/41/yelp-41.2.tar.xz
  ref: b00bf033f02dd79b6d3f255031c71df8d6ed38e552c870b8f391a374724c43c5
build-depends:
- sdk/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/webkit2gtk-4.0.bst
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-webkit2gtk-4-0

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
    split-rules:
      devel:
        (>):
        - '%{libdir}/libyelp.so'
