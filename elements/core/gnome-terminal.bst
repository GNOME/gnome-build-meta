kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-terminal/3.42/gnome-terminal-3.42.1.tar.xz
  ref: c319b1405501b8c7693e616f48eced41695d2e786148ca5f9e27bc7d98f4aeb1
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
