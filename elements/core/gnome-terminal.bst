kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.42/gnome-terminal-3.42.2.tar.xz
  ref: 8a9c8e5ef7a3a73b246a947e1190bb08ec98935af860cf0b3aa2fbf4606817a0
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

variables:
  meson-local: >-
    -Dnautilus_extension=false