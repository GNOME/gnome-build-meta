kind: meson

sources:
- kind: git_repo
  url: github:hughsie/passim.git
  track: '*.*.*'
  ref: 0.1.13-0-g407633ccbb6cce2f55a0a7bf535fa21abf66d9a4

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gnutls.bst
