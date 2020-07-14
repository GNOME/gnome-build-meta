kind: meson

build-depends:
- sdk/gtk-doc.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/liberation-fonts.bst

depends:
- sdk/pygobject.bst
- sdk/pycairo.bst
- sdk/libsoup.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/gcab.bst
- core-deps/libjcat.bst
- core-deps/xmlb.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/genpeimg.bst
- freedesktop-sdk.bst:components/python3-pil.bst
- freedesktop-sdk.bst:components/libsmbios.bst

sources:
- kind: tar
  url: github_com:fwupd/fwupd/archive/1.3.11.tar.gz
