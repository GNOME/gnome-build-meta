kind: meson

sources:
- kind: tar
  url: github_files:fwupd/fwupd/releases/download/1.8.4/fwupd-1.8.4.tar.xz
  ref: adfa07434cdc29ec41c40fef460e8d970963fe0c7e849dec7f3932adb161f886

build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/vala.bst
- sdk-deps/gi-docgen.bst
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
- freedesktop-sdk.bst:components/protobuf-c.bst
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
    -Dsoup_session_compat=false
    -Dplugin_dell=%{plugin_dell}
    -Dplugin_msr=%{plugin_msr}
    -Dplugin_uefi_capsule=%{plugin_uefi_capsule}
    -Defi_binary=%{efi_binary}
    -Dplugin_flashrom=disabled

  plugin_dell: 'false'
  plugin_msr: 'false'
  plugin_uefi_capsule: 'false'
  efi_binary: 'false'
  (?):
  - arch in ["arm", "aarch64"]:
      plugin_uefi_capsule: 'true'
      efi_binary: 'true'
  - arch in ["i686", "x86_64"]:
      plugin_dell: 'true'
      plugin_msr: 'true'
      plugin_uefi_capsule: 'true'
      efi_binary: 'true'
