kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.40/gnome-terminal-3.40.0.tar.xz
  ref: 9d2fe397be0b8b50c4ef96634a2e0480ad9ff56d1431582ecc804907e11fa74e
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
