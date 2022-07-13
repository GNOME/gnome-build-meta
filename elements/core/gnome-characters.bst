kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/43/gnome-characters-43.alpha.tar.xz
  ref: fa7b0e3b95e62573af2d23e6a7f3a56db897190649b01e9ca7eb007d8912e5c0
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
