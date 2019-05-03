kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-keyring.git
  track: master
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/openssh.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
