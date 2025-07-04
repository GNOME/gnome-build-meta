kind: meson

sources:
- kind: tar
  url: gnome_downloads:yelp/42/yelp-42.3.tar.xz
  ref: 26ccc422679a9e6a7a3aa083d90fcdb347f5f2300be3e01431a30d0cdd2a89a3

build-depends:
- sdk-deps/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/webkit2gtk-4.1.bst
- sdk/yelp-xsl.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
    split-rules:
      devel:
        (>):
        - '%{libdir}/libyelp.so'
