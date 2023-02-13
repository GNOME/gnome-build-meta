kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-photos.git
  track: master
  ref: 43.0-14-g898297d1fb3744f533730aab29a86a87e38522b2
  submodules:
    subprojects/libgd:
      checkout: true
      url: gnome:libgd.git

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/babl.bst
- core-deps/gegl.bst
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstalled_tests=false
    -Ddogtail=false
