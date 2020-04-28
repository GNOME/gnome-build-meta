kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/3.36/gnome-keyring-3.36.0.tar.xz
  ref: a264b57a8d1a71fdf0d66e8cd6033d013fb828be279c35766545eb9bb3734f87
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --with-pam-dir=%{libdir}/security
