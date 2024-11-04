kind: meson

sources:
- kind: git_repo
  url: gnome:nautilus.git
  track: main
  ref: 47.0-38-g7f511a705b8963b2aafff4a6db8b027799f67229

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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dselinux=false
