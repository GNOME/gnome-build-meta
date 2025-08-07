kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp/49/yelp-49.beta.tar.xz
  ref: 73aa7e57ac4a079965954751d1f8013c0e01f0d95f090d1969aa792b840312ac
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
