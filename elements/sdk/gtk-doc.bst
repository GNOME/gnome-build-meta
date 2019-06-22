kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk-doc.git
  track: master
depends:
- sdk/yelp-tools.bst
- filename: sdk/python-pygments.bst
  type: runtime
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
