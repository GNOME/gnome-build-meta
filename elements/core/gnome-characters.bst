kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/40/gnome-characters-40.beta.tar.xz
  ref: 1cc2011595d1b88767536c5dbdf70f21ad965370803e1e8d409aba154380f245
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
