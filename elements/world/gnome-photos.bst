kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-photos.git
  track: master
  ref: 44.0-3-ga534601cbf88a55704b0f67b2f23b5ba2fe56bf1
- kind: git_module
  url: gnome:libgd.git
  path: subprojects/libgd
  ref: f01717a24fb7f5b24b1f4865818437f060e83932

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libdazzle.bst
- core-deps/libportal.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/tracker.bst
- world/babl.bst
- world/gegl.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstalled_tests=false
    -Ddogtail=false
