kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/3.36/devhelp-3.36.2.tar.xz
  ref: 8b5a84319efbb2ef1bc4022ee3ed2d6678794eba2dfa993e50e03d6e7b930c5e
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
