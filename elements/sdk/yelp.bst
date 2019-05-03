kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/yelp.git
  track: master
depends:
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/yelp-xsl.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database
