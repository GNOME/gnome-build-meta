kind: meson
sources:
- kind: git_repo
  url: gnome:librest.git
  track: master
  ref: 0.9.1-25-g0bccab03328e162f7e4435ff83821bac04b20269
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dsoup2=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/librest-demo'
        - '%{datadir}/applications/org.gnome.RestDemo.desktop'
        - '%{libdir}/librest-1.0.so'
