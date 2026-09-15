kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/51/gnome-desktop-51.0.tar.xz
  ref: 9ebeb9f1769d3c310caeadd921ab34c8f264b92937740518b3bc859a579a6912
- kind: git_repo
  directory: subprojects/qrcodegen
  url: github:nayuki/QR-Code-generator.git
  ref: 8329a7108fc22be3e1eec0a9f9318978579e3621

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dinstalled_tests=true

config:
  configure-commands:
    (<):
    - meson subprojects packagefiles --apply
