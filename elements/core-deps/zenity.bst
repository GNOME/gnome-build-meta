kind: meson

sources:
- kind: tar
  url: gnome_downloads:zenity/4.2/zenity-4.2.0.tar.xz
  ref: 5f983340c6fa55f4fab5a9769d0771b2cdf1365e2c158ac11cc16ffd892f6bcd
build-depends:
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
