kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/47/xdg-desktop-portal-gnome-47.alpha.tar.xz
  ref: fa217fb1f60d5bb2bdd45e7f13a1648f23e87bad2e3f5ef325ddc210d8d58de9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
