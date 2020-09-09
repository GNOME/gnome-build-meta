kind: meson

sources:
- kind: tar
  url: github_com:fwupd/fwupd/archive/1.3.11.tar.gz
  ref: d0f1517154d6600003c6d2ecfbe872a6b958cf3417f9436dab1b65990498a827

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
- sdk/libsoup.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/gcab.bst
- core-deps/libjcat.bst
- core-deps/xmlb.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/genpeimg.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libsmbios-maybe.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-pil.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst

variables:
  meson-local: >-
    -Dplugin_dell=%{plugin-dell}
  plugin-dell: 'false'
  (?):
  - arch in ['x86_64', 'i686']:
      plugin-dell: 'true'
