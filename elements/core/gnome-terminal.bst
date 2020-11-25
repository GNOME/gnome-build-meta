kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.38/gnome-terminal-3.38.1.tar.xz
  ref: d998d4824f38847fdd74bad6b5f09cc8e11b9de8e2a284a439af290714ddf3d1
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
