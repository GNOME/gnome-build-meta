kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.35/gnome-terminal-3.35.91.tar.xz
  ref: 9958fdf501f8450408cded67954acebb5bb2d786cc6addf6b64c962f2ec9b1b2
build-depends:
- core-deps/intltool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/vte.bst
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --disable-migration
