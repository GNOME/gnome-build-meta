kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-documents.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/libgdata.bst
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
- world/libgepub.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
