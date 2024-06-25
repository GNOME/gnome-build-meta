kind: meson

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gnutls.bst

sources:
- kind: tar
  url: github_files:hughsie/passim/releases/download/0.1.8/passim-0.1.8.tar.xz
  ref: 2b5471a9ce78424d4b5b5a519ca9f5b5db27618af52db5e597cd3037f8a9ca74
