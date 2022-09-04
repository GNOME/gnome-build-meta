kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/43/devhelp-43.rc.tar.xz
  ref: e918ab9caa53070667c6abb39204fa089c4ea55b278cbf654161a9b68ca4990d
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
