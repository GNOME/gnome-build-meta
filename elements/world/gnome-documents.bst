kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-documents.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd.git
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/libgdata.bst
- core-deps/libgepub.bst
- core-deps/libzapojit.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/evince.bst
- core/gnome-desktop.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
