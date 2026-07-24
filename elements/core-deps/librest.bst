kind: meson

sources:
- kind: git_repo
  url: gnome:librest.git
  track: master
  ref: 0.10.2-3-g78c08fda521350a8f11e9034fa1b429c1d98d6d1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst

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
