kind: meson

sources:
- kind: git_repo
  url: gnome:nautilus.git
  track: main
  ref: 49.beta-6-g1535830e7c5f126371ba89f6a174b3ae646706fd

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/xdg-user-dirs-gtk.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/libcloudproviders.bst
- core-deps/libportal.bst
# Build dep of tests, and runtime dep otherwise
- core-deps/localsearch.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pango.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dselinux=false
