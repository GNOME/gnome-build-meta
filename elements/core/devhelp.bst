kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/41/devhelp-41.alpha.tar.xz
  ref: e218045bdc0b893d2ff37095c32a4f92fe364bba3305aa47b08f5d0d82cce7c1
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:bootstrap-import.bst
