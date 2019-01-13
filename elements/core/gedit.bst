kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gedit
  track: master
  submodules:
    subprojects/libgd:
      checkout: True
      url: gitlab_gnome_org:GNOME/libgd
depends:
- core-deps/gspell.bst
- core-deps/gtksourceview.bst
- core-deps/libpeas.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- sdk/yelp-tools.bst
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
