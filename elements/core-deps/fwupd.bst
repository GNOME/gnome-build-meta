kind: meson

sources:
- kind: tar
  url: github_com:fwupd/fwupd/archive/1.4.4.tar.gz

  ref: 91152fa0568fadcd71607e675ba63c6038038e254b404eabbcb1b6d2d1d98fa1
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/liberation-fonts.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libjcat.bst
- core-deps/xmlb.bst
- sdk/gcab.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- sdk/pango.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/genpeimg.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libsmbios-maybe.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-pil.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst

variables:
  (?):
  - arch in ["arm", "aarch64"]:
      meson-local: >-
        -Dplugin_dell=false
  - arch == "ppc64le":
      meson-local: >-
        -Dplugin_dell=false
        -Dplugin_uefi=false
