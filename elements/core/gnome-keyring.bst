kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-keyring.git
  track: master
  ref: 46.0-1-g5b721625035a3d67ea042d9fa8c04a53d2b6c57a
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
