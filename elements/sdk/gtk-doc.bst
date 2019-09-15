kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk-doc.git
  track: master
depends:
- filename: sdk/python-pygments.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xml.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: components/pkg-config.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dtests=false
    -Dcmake_support=true
    -Dautotools_support=true
