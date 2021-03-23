kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-photos/40/gnome-photos-40.rc.tar.xz
  ref: ed7d7b2fa14d05c38a78ff9b18b3fd81c3d4b98577797dc78621aa92e76a5ae8
build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
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
