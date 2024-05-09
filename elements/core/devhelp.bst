kind: meson

sources:
- kind: git_repo
  url: gnome:devhelp.git
  track: main
  ref: 43.0-19-g06067b1885301844aaa80e76e4306b33a06b78d0

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
