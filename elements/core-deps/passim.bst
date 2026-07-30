kind: meson

sources:
- kind: git_repo
  url: github:hughsie/passim.git
  track: '*.*.*'
  ref: 0.1.12-0-g30d8fb64b4b6f45460a2e6767d8197fa5ce6008e

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gnutls.bst
