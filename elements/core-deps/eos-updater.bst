kind: meson

sources:
- kind: tar
  url: github_files:endlessm/eos-updater/archive/Release_4.0.2.tar.gz

  ref: 445d058afe9d683e2e369df42ebf211a495f1e136f965eddc83d46bd4acbf445
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
- freedesktop-sdk.bst:components/valgrind-maybe.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Dmetrics=disabled
