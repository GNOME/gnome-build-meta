kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/3.37/devhelp-3.37.1.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/amtk.bst
- sdk/WebKitGTK.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
