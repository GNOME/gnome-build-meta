kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk-doc.git
  track: master
depends:
- sdk/yelp-tools.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
