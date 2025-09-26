kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: freedesktop-sdk-25.08*
  ref: freedesktop-sdk-25.08.1-0-g3405120e658f2e84c594aeedff456e16a1a2b185
- kind: patch_queue
  path: patches/freedesktop-sdk

config:
  options:
    target_arch: '%{arch}'
    (?):
    - x86_64_v3:
        x86_64_v3: true
    - arch == 'x86_64':
        bootstrap_build_arch: 'x86_64'
    - arch == 'aarch64':
        bootstrap_build_arch: 'aarch64'
    - arch == "ppc64le":
        bootstrap_build_arch: "ppc64le"
    - arch == "riscv64":
        bootstrap_build_arch: "x86_64"

  overrides:
    components/at-spi2-core.bst: sdk/at-spi2-core.bst
    components/cairo.bst: sdk/cairo.bst
    components/fcitx5-gtk.bst: sdk/fcitx5-gtk.bst
    components/gcab.bst: sdk/gcab.bst
    components/gdk-pixbuf.bst: sdk/gdk-pixbuf.bst
    components/glib-networking.bst: sdk/glib-networking.bst
    components/glib.bst: sdk/glib.bst
    components/gobject-introspection.bst: sdk/gobject-introspection.bst
    components/python3-gi-docgen.bst: sdk/gi-docgen.bst
    components/graphene.bst: sdk/graphene.bst
    components/gsettings-desktop-schemas.bst: sdk/gsettings-desktop-schemas.bst
    components/gtk-doc.bst: sdk/gtk-doc.bst
    components/gtk3.bst: sdk/gtk+-3.bst
    components/libibus.bst: sdk/libibus.bst
    components/json-glib.bst: sdk/json-glib.bst
    components/libnotify.bst: sdk/libnotify.bst
    components/librsvg.bst: sdk/librsvg.bst
    components/libsoup.bst: sdk/libsoup.bst
    components/pango.bst: sdk/pango.bst
    components/pygobject.bst: sdk/pygobject.bst
    components/vala.bst: sdk/vala.bst
    components/libsecret.bst: sdk/libsecret.bst

    # While freedesktop-sdk provides a zenity element, it's the
    # gtk3 version which we don't want, and we also override it
    # to a void element to avoid zenity ending up in our Runtime.
    # However mutter depends on zenity when building the tests,
    # so we will add it to core-deps, oci images and gnomeos but
    # not the Flatpak runtime, as its easy to bundle when needed.
    components/zenity.bst: void/zenity.bst

    components/linux-module-cert.bst: gnomeos/linux-module-cert.bst
    components/systemd-base.bst: core-deps/systemd-base.bst
    components/systemd.bst: core-deps/systemd.bst
    components/systemd-ukify.bst: core-deps/systemd-ukify.bst
    components/systemd-libs.bst: core-deps/systemd-libs.bst
