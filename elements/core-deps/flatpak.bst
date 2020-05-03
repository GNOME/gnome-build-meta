kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/flatpak/releases/download/1.4.3/flatpak-1.4.3.tar.xz

  ref: 279ee6f3b3622943816b949b5cf076df95600aa13a8b45412f8bf68b76ed6e85
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/fuse.bst
- core-deps/libostree.bst
- core-deps/polkit.bst
- sdk/appstream-glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:bootstrap-import.bst
