kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/46/gnome-keyring-46.1.tar.xz
  ref: b1d3ae9132ff2f8b3f25a190790892968e3d0acf952a487e40f644a8550ce3f6
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --with-pam-dir=%{libdir}/security
