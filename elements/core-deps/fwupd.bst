kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd/releases/download/1.9.21/fwupd-1.9.21.tar.xz
  ref: a0b56ed11f0ae8045b465535d468b14a230535a30d4a703ff9113fc5dd236ba4
- kind: patch
  path: patches/fwupd/0001-trivial-Fix-compile-when-using-Pango-1.56.2.patch

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/liberation-fonts.bst
# Needed for docs/test-deps.py
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/libjcat.bst
- core-deps/passim.bst
- sdk/gcab.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/curl.bst
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
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst

(?):
- arch in ["arm", "aarch64", "x86_64", "i686"]:
    depends:
      (>):
      - core-deps/fwupd-efi.bst

environment:
  PKG_CONFIG_PATH: '%{libdir}/GL/default/lib/pkgconfig:'

variables:
  meson-local: >-
    -Dlaunchd=disabled
    -Dplugin_msr=%{plugin_msr}
    -Dplugin_uefi_capsule=%{plugin_uefi_capsule}
    -Defi_binary=%{efi_binary}
    -Dplugin_flashrom=disabled
    -Dplugin_logitech_bulkcontroller=disabled

  plugin_msr: 'false'
  plugin_uefi_capsule: 'false'
  efi_binary: 'false'
  (?):
  - arch in ["arm", "aarch64"]:
      plugin_uefi_capsule: 'true'
      efi_binary: 'true'
  - arch in ["i686", "x86_64"]:
      plugin_msr: 'true'
      plugin_uefi_capsule: 'true'
      efi_binary: 'true'
