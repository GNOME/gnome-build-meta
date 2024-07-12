kind: meson

sources:
- kind: tar
  url: gnome_downloads:nautilus/46/nautilus-46.2.tar.xz
  ref: 6ee8c99019b9e3447f6918d68232a20deca89e5525c05805432b7d8840ca71fa
- kind: patch_queue
  path: patches/nautilus
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dselinux=false
