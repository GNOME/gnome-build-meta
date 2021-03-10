kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-photos.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/babl.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/gfbgraph.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- core-deps/tracker-2.bst
- core-deps/tracker-miners-2.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dinstalled_tests=false
    -Ddogtail=false
