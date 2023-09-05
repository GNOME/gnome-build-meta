kind: meson

sources:
- kind: tar
  url: gnome_downloads:nautilus/45/nautilus-45.rc.tar.xz
  ref: 5572db60783e4f22f6e7c02377b0bd1d9299e0297185a3062c0070f90766bdb4
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/gexiv2.bst
- core-deps/gnome-autoar.bst
- core-deps/libcloudproviders.bst
- core-deps/libportal.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pango.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dselinux=false
