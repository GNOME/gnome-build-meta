kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: master
  track-tags: True
  ref: freedesktop-sdk-23.08beta.7-0-gf1e95c88b72bb6fea9583198421da491daa1b039
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
    components/pango.bst: sdk/pango.bst
    components/pygobject.bst: sdk/pygobject.bst
    components/vala.bst: sdk/vala.bst
    components/zenity.bst: void/zenity.bst
    components/xdg-desktop-portal-base.bst: core-deps/xdg-desktop-portal.bst
