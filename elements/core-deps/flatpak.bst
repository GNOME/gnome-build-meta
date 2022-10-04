kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak/releases/download/1.14.0/flatpak-1.14.0.tar.xz
  ref: 8e276973770ea24ddf2597ad4aecd36b98393e6bde91e48e1743aaca67f27815

build-depends:
- core-deps/python-pyparsing.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/AppStream.bst
- core-deps/libostree.bst
- sdk-deps/bubblewrap.bst
- sdk-deps/xdg-dbus-proxy.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/fuse.bst
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
