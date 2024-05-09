kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-23.08.*
  ref: freedesktop-sdk-23.08.17-0-g7468e62da2ad3643df8e220347ed383378d60bc0
- kind: patch
  path: patches/freedesktop-sdk/drop-openh264-runtime-version-checks.patch
- kind: patch
  path: 
    patches/freedesktop-sdk/0001-gstreamer-Backport-meson-patch-for-the-rsvg-element.patch
- kind: patch
  path: patches/freedesktop-sdk/0001-libdrm-add-back-the-api.patch
- kind: patch
  path: patches/freedesktop-sdk/0001-components-dracut.bst-switch-to-dracut-ng.patch
- kind: patch
  path: patches/freedesktop-sdk/0002-components-dracut.bst-backport-patches-needed-by-sys.patch
- kind: patch
  path: patches/freedesktop-sdk/0001-components-linux.bst-strictly-depend-on-linux-module.patch
- kind: patch
  path: patches/freedesktop-sdk/drm-i915-module.patch
- kind: patch
  path: patches/freedesktop-sdk/0001-utils-generate-cve-report.bst.patch

config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch in ('x86_64', 'i686'):
        bootstrap_build_arch: 'x86_64'
    - arch in ('aarch64', 'arm'):
        bootstrap_build_arch: 'aarch64'
    - arch == "ppc64le":
        bootstrap_build_arch: "ppc64le"
    - arch == "riscv64":
        bootstrap_build_arch: "x86_64"

  overrides:
    components/appstream-glib.bst: sdk/appstream-glib.bst
    components/at-spi2-core.bst: sdk/at-spi2-core.bst
    components/cairo.bst: sdk/cairo.bst
    components/fcitx5.bst: sdk/fcitx5-gtk.bst
    components/gcab.bst: sdk/gcab.bst
    components/gdk-pixbuf.bst: sdk/gdk-pixbuf.bst
    components/glib-networking.bst: sdk/glib-networking.bst
    components/glib.bst: sdk/glib.bst
    components/gobject-introspection.bst: sdk/gobject-introspection.bst
    components/graphene.bst: sdk/graphene.bst
    components/gsettings-desktop-schemas.bst: sdk/gsettings-desktop-schemas.bst
    components/gtk-doc.bst: sdk/gtk-doc.bst
    components/gtk3.bst: sdk/gtk+-3.bst
    components/ibus.bst: sdk/libibus.bst
    components/json-glib.bst: sdk/json-glib.bst
    components/librsvg.bst: sdk/librsvg.bst
    components/libsoup.bst: sdk/libsoup.bst
    components/noopenh264.bst: sdk/noopenh264.bst
    components/pango.bst: sdk/pango.bst
    components/pygobject.bst: sdk/pygobject.bst
    components/vala.bst: sdk/vala.bst
    components/zenity.bst: void/zenity.bst
    components/xdg-desktop-portal-base.bst: core-deps/xdg-desktop-portal.bst
    components/linux-module-cert.bst: vm-secure/linux-module-cert.bst
    components/meson.bst: sdk/meson.bst
    components/systemd-base.bst: core-deps/systemd-base.bst
    components/systemd.bst: core-deps/systemd.bst
