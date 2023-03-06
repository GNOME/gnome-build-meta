kind: meson

sources:
- kind: git_tag
  url: gnome:eog.git
  track: master
  ref: 44.beta-20-ga175917160aa56fb6162093fc449a6b8db697d36

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/exempi.bst
- core-deps/libpeas.bst
- core-deps/libportal.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libexif.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- core-deps/webp-pixbuf-loader.bst
