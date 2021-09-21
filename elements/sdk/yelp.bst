kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp/41/yelp-41.0.tar.xz
  ref: 25a7d9fafc1eb010f1aeea3a3782ea392f6d94d6d82b0b42455321ad15ce5087
build-depends:
- sdk/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/webkitgtk.bst
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
