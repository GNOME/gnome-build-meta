kind: autotools

sources:
- kind: tar
  url: github_com:endlessm/eos-updater/archive/Release_3.7.5.tar.gz

depends:
- core-deps/NetworkManager.bst
- core-deps/avahi.bst
- core-deps/flatpak.bst
- core-deps/mogwai.bst
- core-deps/libostree.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/valgrind.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-local: >-
    --disable-Werror
    --disable-metrics
