kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.40/gnome-terminal-3.40.2.tar.xz
  ref: 4c79af8ffe8bd3a5daca1911ea2c0acd6872860a1dd5d7eea219f4ab4ae556ac
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
