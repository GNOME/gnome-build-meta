kind: meson
sources:
- kind: git_tag
  url: gnome:libpeas.git
  track: master
  ref: libpeas-1.34.0-2-g94e55ab2ed47fe2b75f21aac51177bdc018b8fe6
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dpython3=true
    -Dintrospection=true
    -Dvapi=true
    -Dwidgetry=true
    -Dgtk_doc=true
