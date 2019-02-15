kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-documents
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd
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
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
