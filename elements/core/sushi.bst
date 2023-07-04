kind: meson

sources:
- kind: tar
  url: gnome_downloads:sushi/45/sushi-45.alpha.2.tar.xz
  ref: 74d46c4566c327ecc9e012681a5934b5008ea1052226f4a7359c0a7f7382d912
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gtksourceview-4.bst
- core/evince.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:bootstrap-import.bst
