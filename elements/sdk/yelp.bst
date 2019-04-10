kind: autotools
sources:
- kind: tar
  url: gnome_downloads:yelp/3.32/yelp-3.32.1.tar.xz
depends:
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-xsl.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
