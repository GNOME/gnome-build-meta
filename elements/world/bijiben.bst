kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/bijiben
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd

depends:
- core-deps/evolution-data-server.bst
- core-deps/tracker.bst
- sdk/WebKitGTK+.bst
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
