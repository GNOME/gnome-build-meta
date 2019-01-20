kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp
  track: master
depends:
- sdk/WebKitGTK+.bst
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
  type: build

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
