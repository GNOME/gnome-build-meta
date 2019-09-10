kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp/3.34/yelp-3.34.0.tar.xz
depends:
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-xsl.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
public:
  bst:
    integration-commands:
    - |
      update-desktop-database
