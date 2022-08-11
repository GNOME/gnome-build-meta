kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak/releases/download/1.12.1/flatpak-1.12.1.tar.xz

  ref: 23893bca7fee82692c43cb692dbec36ea9d5339508c19d3925eac6f06414c857
build-depends:
- core-deps/python-pyparsing.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libostree.bst
- sdk-deps/bubblewrap.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/appstream-glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/fuse.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-system-bubblewrap
    --with-system-dbus-proxy
