kind: autotools

sources:
- kind: git_repo
  url: gnome:yelp.git
  track: master
  ref: 42.2-20-gb96bdc182bad390ccb92b3ce96d7088a9d3bcd8e

build-depends:
- sdk-deps/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

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
