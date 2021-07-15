kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.40/gnome-terminal-3.40.3.tar.xz
  ref: cbe9aa3f948116fa3b521754fceb43173ab844cb0ac81145e05d0cab0f8b1a22
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
