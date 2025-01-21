kind: meson

sources:
- kind: git_repo
  url: gnome:evince.git
  track: gnome-46
  ref: 46.3.1-7-ge48fd3f39b5daa237f0b31d571833fb4872737d1

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
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
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcomics=disabled
    -Ddjvu=disabled
    -Ddvi=disabled
    -Dintrospection=true
    -Dgtk_doc=false
    -Dnautilus=false
