kind: junction
sources:
- kind: git_tag
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: abderrahim/bst2-22.08
  ref: freedesktop-sdk-22.08.8-19-g6fd797838acbd68798868a0ed203a78a6a727601
- kind: patch
  path: files/freedesktop-sdk/12613.patch
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
    components/gcab.bst: sdk/gcab.bst
    components/gdk-pixbuf.bst: sdk/gdk-pixbuf.bst
    components/glib-networking.bst: sdk/glib-networking.bst
    components/glib.bst: sdk/glib.bst
    components/gobject-introspection.bst: sdk/gobject-introspection.bst
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
    components/zenity.bst: sdk/dummy.bst
    # Remove when updating to 23.08
    components/atk.bst: sdk/dummy.bst
    components/at-spi2-atk.bst: sdk/dummy.bst
