kind: meson

sources:
- kind: git_repo
  url: github:fwupd/fwupd.git
  track: '*.*.*'
  ref: 2.1.1-0-g0a3ee12574d05af621c1c0add6b2df73ac66eaca

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
- freedesktop-sdk.bst:components/valgrind-maybe.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/libjcat.bst
- core-deps/passim.bst
- sdk/gcab.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/genpeimg.bst
- freedesktop-sdk.bst:components/gnu-efi-maybe.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/libcbor.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libmnl.bst
- freedesktop-sdk.bst:components/libsmbios-maybe.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-pil.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst

(?):
- arch in ["aarch64", "x86_64"]:
    depends:
      (>):
      - core-deps/fwupd-efi.bst

environment:
  PKG_CONFIG_PATH: '%{libdir}/GL/default/lib/pkgconfig:'

variables:
  meson-local: >-
    -Defi_binary=%{efi_binary}
    -Dplugin_flashrom=disabled
    -Dvendor_ids_dir='%{datadir}/hwdata'
    -Dumockdev_tests=disabled
    -Defi_os_dir=org.gnome.os

  efi_binary: 'false'
  (?):
  - arch in ["aarch64", "x86_64"]:
      efi_binary: 'true'
