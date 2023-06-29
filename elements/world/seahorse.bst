kind: meson

sources:
- kind: git_tag
  url: gnome:seahorse.git
  track: main

build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/openldap.bst
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- core-deps/libgee.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
