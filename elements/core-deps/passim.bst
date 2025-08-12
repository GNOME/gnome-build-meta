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
  url: github_files:hughsie/passim/releases/download/0.1.10/passim-0.1.10.tar.xz
  ref: 53ede935a788fbb9bd569ca16347e02a2a4d39f6154beb672161dbb79f56419b
