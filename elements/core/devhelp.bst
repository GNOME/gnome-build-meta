kind: meson

sources:
- kind: git_tag
  url: gnome:devhelp.git
  track: main
  ref: 43.0-2-ga52ea7ab208ca470f39b4b8271552de9f85e7f20

build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
