kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/3.35/baobab-3.35.2.tar.xz
  ref: 983e6670e5c45e25552117f59db3132b0f3dffc9b3a59a038d7751fcbf7d6773
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
