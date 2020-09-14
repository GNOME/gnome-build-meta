kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/3.38/devhelp-3.38.0.tar.xz
  ref: 918efb173122b26d45fa51c194a0b659e63fee7705f6722db2534fabc3452369
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
