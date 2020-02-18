kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.34/gnome-terminal-3.34.2.tar.xz
  ref: 3bd723f4058ec014da4715db4181b7d73eccc797b85ad5e6236996951c01803d
depends:
- filename: core-deps/intltool.bst
  type: build
- core/gnome-shell.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- filename: components/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-migration
