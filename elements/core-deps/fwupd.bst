kind: meson

sources:
- kind: git_repo
  url: github:fwupd/fwupd.git
  track: '*.*.*'
  ref: 2.1.9-0-g27be80ac78856aeb297d7ce7b0c6eead6682d6ec

# Applies a bug fix that prevents updates to be applied in a specific
# edge-case on certain Lenovo laptops. This patch has already been merged
# and backported upstream, and will be safe to remove here once we update
# to fwupd 2.1.10+ or 2.2+
- kind: patch
  path: patches/fwupd/lenovo-bootorder-lock-sd-boot-fix.patch

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/liberation-fonts.bst
# Needed for docs/test-deps.py
- freedesktop-sdk.bst:components/python3-packaging.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/passim.bst
- sdk/gcab.bst
- sdk/glib.bst
- sdk/pango.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/libcbor.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libmnl.bst
- freedesktop-sdk.bst:components/libsmbios-maybe.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/modemmanager.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/pycairo.bst
- freedesktop-sdk.bst:components/python3-pil.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst

environment:
  PKG_CONFIG_PATH: '%{libdir}/GL/default/lib/pkgconfig:'

variables:
  meson-local: >-
    -Dhsi=%{hsi_feature}
    -Dvendor_ids_dir='%{datadir}/hwdata'
    -Dumockdev_tests=disabled
    -Defi_os_dir=org.gnome.os
    -Dvalgrind=disabled

  hsi_feature: 'disabled'

  (?):
  - arch in ["x86_64"]:
      hsi_feature: 'enabled'
