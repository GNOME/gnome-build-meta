kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-desktop.git
  track: master
  ref: 51.alpha-0-ge29e9eb0f03fcdaf632682e4b78b3e3d5524073b
# Needs to be kept in sync with the repo until we get a wrap source plugin
# https://gitlab.gnome.org/GNOME/gnome-desktop/-/blob/master/subprojects/qrcodegen.wrap
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
