kind: meson

sources:
- kind: tar
  url: gnome_downloads:evince/48/evince-48.5.tar.xz
  ref: 0c7aba9485d0b6fb9f3e0ee75be916544744dc2ed9d58a2f9936a2e0434ac4a6
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgxps.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dcomics=disabled
    -Ddjvu=disabled
    -Ddvi=disabled
    -Dgspell=disabled
    -Dintrospection=true
    -Dpreviewer=false
    -Dthumbnailer=false
    -Dviewer=false
    -Dgtk_doc=false
    -Dnautilus=false
