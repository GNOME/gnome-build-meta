kind: meson

sources:
- kind: git_repo
  url: gnome:gtksourceview.git
  track: master
  ref: 5.22.0-106-g3ec22e6253a3d8d9d954469a2fab31a2001b887f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gtksourceview5-widget'
        - '%{datadir}/gtksourceview-5/language-specs/language.dtd'
        - '%{datadir}/gtksourceview-5/language-specs/language.rng'
        - '%{datadir}/gtksourceview-5/language-specs/language2.rng'
        - '%{datadir}/gtksourceview-5/snippets/snippets.rng'
        - '%{datadir}/gtksourceview-5/styles/styles.rng'
