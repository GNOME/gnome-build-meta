kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.40/gnome-terminal-3.40.0.tar.xz
  ref: 9d2fe397be0b8b50c4ef96634a2e0480ad9ff56d1431582ecc804907e11fa74e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/dconf.bst
- core-deps/vte.bst
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-migration
