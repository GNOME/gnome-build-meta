kind: meson

sources:
- kind: tar
  url: gnome_downloads:evince/43/evince-43.2.tar.xz
  ref: be9e47d521926a9ce98761ad96ee451c4540dbcd10a4c7fb33ba88ef40dcef5c
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
    -Dcomics=disabled
    -Ddjvu=disabled
    -Ddvi=disabled
    -Dintrospection=true
    -Dgtk_doc=false
    -Dnautilus=false
