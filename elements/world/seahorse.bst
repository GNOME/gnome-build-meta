kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/seahorse.git
  track: master
  submodules:
    subprojets/libhandy:
      checkout: false
      url: purism:Librem5/libhandy.git
runtime-depends:
- sdk/adwaita-icon-theme.bst
depends:
- core-deps/libhandy.bst
- core-deps/openldap.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
