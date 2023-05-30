kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak/releases/download/1.14.4/flatpak-1.14.4.tar.xz
  ref: 8a34dbd0b67c434e7598b98ec690953d046f0db26e480aeafb46d72aec716799

build-depends:
- core-deps/python-pyparsing.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/ostree.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/AppStream.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/bubblewrap.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:bootstrap-import.bst

runtime-depends:
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst

variables:
  conf-local: >-
    --with-curl
    --with-system-bubblewrap
    --with-system-dbus-proxy
