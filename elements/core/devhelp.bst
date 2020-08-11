kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/3.37/devhelp-3.37.1.tar.xz
  ref: 81ffbb9e137cd0031a4f4304a1244d0b4328e4a7c00d749a8fc0e2bbaa3005f9
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
