kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/seahorse.git
  track: master
depends:
- core-deps/avahi.bst
- core-deps/openldap.bst
- core-deps/pwquality.bst
- sdk/glib.bst
- sdk/gcr.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: sdk/cantarell-fonts.bst
  type: runtime
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
