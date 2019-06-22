kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-keyring.git
  track: master
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/openssh.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
