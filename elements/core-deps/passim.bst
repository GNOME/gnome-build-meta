kind: meson

sources:
- kind: git_repo
  url: github:hughsie/passim.git
  track: '*.*.*'
  ref: 0.1.10-0-gc4aab60794bc3acbe6f5f70e55dfd53cbc4fb894

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gnutls.bst
