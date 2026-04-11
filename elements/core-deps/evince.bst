kind: meson

sources:
- kind: git_repo
  url: gnome:evince.git
  track: '48.*'
  ref: 48.1-0-gfbcb33ea84ba848400736c13cbbef870c36d848a

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
