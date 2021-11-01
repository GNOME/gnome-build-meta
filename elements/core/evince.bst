kind: meson

sources:
- kind: tar
  url: gnome_downloads:evince/41/evince-41.2.tar.xz
  ref: 95abad0d6feeac9560db3ab80ba7c5eabb1fdf1ca0e3b3c93339af05453a24d8
build-depends:
- sdk/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gspell.bst
- core-deps/libgxps.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddjvu=disabled
    -Ddvi=disabled
    -Dintrospection=true
    -Dgtk_doc=false
