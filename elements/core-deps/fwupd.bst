kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd/releases/download/1.7.10/fwupd-1.7.10.tar.xz

  ref: 52e811677073f0303f9f5d056ead5f866f782594281cf4e592f396cdc6cf8a43
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/liberation-fonts.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libjcat.bst
- core-deps/xmlb.bst
- core-deps/protobuf-c.bst
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
- freedesktop-sdk.bst:components/gnu-efi-maybe.bst

(?):
- arch in ["arm", "aarch64", "x86_64", "i686", "riscv64"]:
    depends:
      (>):
      - core-deps/fwupd-efi.bst

variables:
  meson-local: >-
    -Dplugin_msr=%{msr}
    -Dplugin_dell=%{dell}
    -Dplugin_uefi_capsule=%{uefi}
  msr: "false" # MSR is only for Intel processors
  dell: "false"
  uefi: "true"
  (?):
  - arch in ["x86_64", "i686"]:
      dell: "true"
      msr: "true"
  - arch in ["ppc64le"]:
      uefi: "false"
