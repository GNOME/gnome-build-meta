kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-24.08*
  ref: freedesktop-sdk-24.08rc.2-0-g9f82a20f319c837f80114a474d3d8d4776d6e7ba
- kind: patch_queue
  path: patches/freedesktop-sdk

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
    components/libnotify.bst: sdk/libnotify.bst
    components/librsvg.bst: sdk/librsvg.bst
    components/libsoup.bst: sdk/libsoup.bst
    components/pango.bst: sdk/pango.bst
    components/pygobject.bst: sdk/pygobject.bst
    components/vala.bst: sdk/vala.bst
    components/zenity.bst: void/zenity.bst
    components/xdg-desktop-portal-base.bst: core-deps/xdg-desktop-portal.bst
    components/linux-module-cert.bst: vm-secure/linux-module-cert.bst
    components/systemd-base.bst: core-deps/systemd-base.bst
    components/systemd.bst: core-deps/systemd.bst
