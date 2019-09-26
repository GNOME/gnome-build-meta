kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/bijiben.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git
depends:
- core-deps/evolution-data-server.bst
- core-deps/tracker.bst
- sdk/WebKitGTK.bst
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
