kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/3.35/gnome-keyring-3.35.90.tar.xz
  ref: 729e0c9068489f38271609bb14738388dd66c800bfdddcac80a9f6ca579d95f4
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
