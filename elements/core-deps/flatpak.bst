kind: meson

sources:
- kind: git_repo
  url: github:flatpak/flatpak.git
  (?):
  - channel == "nightly":
      track: main
  - channel == "stable":
      track: 1.[0-8][02468].*
  ref: 1.19.0-34-ge182111ad07fdc11f6b811645700eac95a909303
- kind: git_repo
  url: gnome:libglnx.git
  directory: subprojects/libglnx
  # Meson wrap file
  # https://github.com/flatpak/flatpak/blob/main/subprojects/libglnx.wrap
  ref: c18b9671443c4098ee734f04184808632ece154c
- kind: git_repo
  url: gnome_gitlab:alexl/variant-schema-compiler.git
  directory: subprojects/variant-schema-compiler
  # meson wrap file
  # https://github.com/flatpak/flatpak/blob/main/subprojects/variant-schema-compiler.wrap
  ref: 4c18b9ef404bb97ba4cfd1312f9de7cffea62334

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3-pyparsing.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/bubblewrap.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:components/ostree.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/xdg-dbus-proxy.bst

variables:
  meson-local: >-
    -Dgtkdoc=disabled
    -Dsystem_bubblewrap=bwrap
    -Ddconf=disabled
    -Dmalcontent=disabled
    -Dselinux_module=disabled
    -Dtests=false
    -Dsystem_dbus_proxy=xdg-dbus-proxy

config:
  configure-commands:
    (<):
    - meson subprojects packagefiles --apply
