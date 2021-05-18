kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/seahorse.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/openldap.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
