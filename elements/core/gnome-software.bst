kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-software
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dfwupd=false -Dflatpak=false
