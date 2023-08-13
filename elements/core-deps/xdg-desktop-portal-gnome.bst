kind: meson

sources:
- kind: git_tag
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 45.beta-16-gdf90f5b97735ddcd8474b4dda851d62fa82eaae5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
