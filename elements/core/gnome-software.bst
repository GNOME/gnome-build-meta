kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-software.git
  track: master
depends:
- core-deps/gspell.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core-deps/polkit.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dfwupd=false
    -Dflatpak=false
    -Dvalgrind=false
    -Dpackagekit=false
