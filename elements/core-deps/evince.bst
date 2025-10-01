kind: meson

sources:
- kind: tar
  url: gnome_downloads:evince/48/evince-48.1.tar.xz
  ref: 7d8b9a6fa3a05d3f5b9048859027688c73a788ff6e923bc3945126884943fa10

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
