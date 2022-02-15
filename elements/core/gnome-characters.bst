kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/42/gnome-characters-42.beta.tar.xz
  ref: cad31fa392402358618be698f467909b21754a9ffff4cab88523f09a2c2a1b12
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
