kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/46/gnome-keyring-46.2.tar.xz
  ref: bf26c966b8a8b7f3285ecc8bb3e467b9c20f9535b94dc451c9c559ddcff61925
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --with-pam-dir=%{libdir}/security --with-systemd
