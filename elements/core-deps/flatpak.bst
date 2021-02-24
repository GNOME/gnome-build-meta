kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/flatpak/releases/download/1.8.5/flatpak-1.8.5.tar.xz

variables:
  autogen: autoreconf -fvi
  conf-local: >-
    --with-system-bubblewrap
    --with-system-dbus-proxy

build-depends:
- core-deps/python-pyparsing.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
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

runtime-depends:
- core-deps/xdg-desktop-portal-gtk.bst
