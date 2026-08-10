kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/51/gnome-desktop-51.alpha.tar.xz
  ref: 8a4d09618fec88fff1549e5b80ac41776efaccb8d65db3fb77345b5394819932
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
    - cp -r subprojects/packagefiles/qrcodegen/* subprojects/qrcodegen
