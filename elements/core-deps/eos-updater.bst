kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- core-deps/ostree.bst
- core-deps/flatpak.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/gnupg.bst
- core-deps/NetworkManager.bst
- core-deps/eos-metrics.bst
- core-deps/avahi.bst
- core-deps/mogwai.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/valgrind.bst

variables:
  conf-local: >-
    --disable-Werror

sources:
- kind: git_tag
  url: github_com:endlessm/eos-updater.git
  track: master
  track-tags: true
  track-extra:
  - eos3.6
  - eos3.7
