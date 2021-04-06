kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/bijiben.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git

build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter-gtk.bst
- core-deps/evolution-data-server.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/tracker.bst
- sdk/webkitgtk.bst
- world/libhandy-0.bst
- freedesktop-sdk.bst:bootstrap-import.bst
