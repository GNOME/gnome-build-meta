kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-keyring/40/gnome-keyring-40.0.tar.xz
  ref: a3d24db08ee2fdf240fbbf0971a98c8ee295aa0e1a774537f4ea938038a3b931
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --with-pam-dir=%{libdir}/security
