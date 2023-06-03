kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: True
  ref: freedesktop-sdk-23.08beta.4-0-gecac7d1b8efecb53e392b20f459c382682e4eb5d
- kind: patch
  path: freedesktop-sdk-systemd-repart-fix.patch
- kind: patch
  path: freedesktop-sdk-lockdown.patch
- kind: patch
  path: freedesktop-sdk-dracut.patch
- kind: patch
  path: freedesktop-sdk-tpm.patch
- kind: patch
  path: freedesktop-sdk-fusermount.patch
- kind: patch
  path: freedesktop-sdk-module-signing.patch
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
    components/pango.bst: sdk/pango.bst
    components/pygobject.bst: sdk/pygobject.bst
    components/vala.bst: sdk/vala.bst
    components/zenity.bst: void/zenity.bst
    components/linux-module-cert.bst: vm-secure/linux-module-cert.bst
