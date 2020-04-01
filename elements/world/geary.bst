kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/geary.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/folks.bst
- core-deps/gmime3.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gsound.bst
- core-deps/gspell.bst
- core-deps/libhandy.bst
- core-deps/libpeas.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/enchant-2.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/vala.bst
- sdk/WebKitGTK.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:bootstrap-import.bst
