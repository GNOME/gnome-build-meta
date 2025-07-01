kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/48/gnome-keyring-48.0.tar.xz
  ref: f20518c920e9ea3f9c9b8b44be8c50d8d7feecd0dd5624960f77bd2ca4fbeb9d
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gcr-3.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
