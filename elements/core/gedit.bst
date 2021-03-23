kind: meson

sources:
- kind: tar
  url: gnome_downloads:gedit/40/gedit-40.0.tar.xz
  ref: 0e8aac632b8879a57346aaf35c66f7df40c3fd5ea37a78e04ea218e41e3984e9
- kind: patch
  path: files/gedit/102.patch

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/amtk.bst
- core-deps/gspell.bst
- core-deps/libpeas.bst
- core-deps/tepl.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtksourceview.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
