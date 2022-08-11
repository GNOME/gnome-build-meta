kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/43/devhelp-43.beta.tar.xz
  ref: 715806e7444f92d616db1b88f10ab7cf2f6c14dad00d7841aadcfdc776499931
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
