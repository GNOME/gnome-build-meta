kind: meson

sources:
- kind: tar
  url: github_com:endlessm/eos-updater/archive/Release_3.9.3.tar.gz

  ref: c24b1c55a378f057a319dbe8408b88bd68198a89bd329ea7194d0c9c7f42dd76
depends:
- core-deps/NetworkManager.bst
- core-deps/flatpak.bst
- core-deps/libostree.bst
- core-deps/mogwai.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/valgrind.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Dmetrics=disabled
