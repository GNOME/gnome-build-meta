kind: meson

sources:
- kind: git_repo
  url: gnome:nautilus.git
  track: main
  ref: 50.0-228-g3d28e3ccf05ed479bc06245481960443c4fef264
# please keep in sync with https://gitlab.gnome.org/GNOME/nautilus/-/blob/main/subprojects/libgxdp.wrap
- kind: git_repo
  url: gnome:libgxdp.git
  ref: df896e3412b749947bc6f62a91a1aac8e6b6d19b
  directory: subprojects/libgxdp

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

runtime-depends:
- core-deps/xdg-user-dirs-gtk.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/libcloudproviders.bst
# Build dep of tests, and runtime dep otherwise
- core-deps/localsearch.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libglycin-gtk4.bst
- sdk/libportal.bst
- sdk/pango.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dselinux=false
