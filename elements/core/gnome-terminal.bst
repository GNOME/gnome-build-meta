kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.42/gnome-terminal-3.42.3.tar.xz
  ref: 666e263c427b5ab0e772883626e59c53c2734099128fab2ccba2a758041e23f5
build-depends:
- core/gnome-shell.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/dconf.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
