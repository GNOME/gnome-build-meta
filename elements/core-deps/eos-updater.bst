kind: meson

sources:
- kind: tar
  url: github_files:endlessm/eos-updater/archive/Release_4.0.7.tar.gz
- kind: patch
  path: files/eos-updater/no-ostree-httpd.patch

  ref: 583fd4c02d48d38a5f3f089e654ede2448aec49aaf6d2096a1798538c844d627
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
