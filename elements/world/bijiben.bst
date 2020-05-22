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
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- core-deps/libhandy-0.bst
- core-deps/tracker-2.bst
- sdk/WebKitGTK.bst
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
