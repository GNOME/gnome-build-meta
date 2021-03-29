kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp/3.38/yelp-3.38.3.tar.xz
  ref: afd46a4d0aeb46bb425c520071d818f8b2b32e69e756abfd997968769a61549d
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/webkitgtk.bst
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
