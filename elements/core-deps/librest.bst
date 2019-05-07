kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/librest.git
  track: librest-0-7
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: components/ca-certificates.bst
  junction: freedesktop-sdk.bst
- filename: components/which.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
