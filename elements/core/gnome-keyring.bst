kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/3.35/gnome-keyring-3.35.90.tar.xz
  ref: 2eec0bae5d5bf5abe1aa65b426b9306582bbcda92ced541ac722581679068309
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
