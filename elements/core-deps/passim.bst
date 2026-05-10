kind: meson

sources:
- kind: git_repo
  url: github:hughsie/passim.git
  track: '*.*.*'
  ref: 0.1.11-0-g5a688cb32891441956f0fa0ed0929880de13b8a0

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gnutls.bst
