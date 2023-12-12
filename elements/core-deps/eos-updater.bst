kind: meson

sources:
- kind: tar
  url: github_files:endlessm/eos-updater/archive/Version_1.4.0.tar.gz
  ref: d3c0dbad92211f8116a833c7e0ebce7670daefd100cba0b87aa71810086e126a

depends:
- core-deps/NetworkManager.bst
- core-deps/mogwai.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/ostree.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/valgrind-maybe.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Dmetrics=disabled
