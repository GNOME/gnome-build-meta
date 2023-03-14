kind: meson

sources:
- kind: git_tag
  url: gnome:devhelp.git
  track: main
  ref: 43.0-8-g0f0685335a5d40cd25fe6f6cdbc2c5c8ce34a3b6

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
