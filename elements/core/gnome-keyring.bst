kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-keyring.git
  track: master
  ref: 46.1-2-g2d2d48e3c27130d487460596153561f275bf6be0
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
