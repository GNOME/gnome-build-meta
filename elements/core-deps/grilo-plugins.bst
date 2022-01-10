kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo-plugins/0.3/grilo-plugins-0.3.14.tar.xz
  ref: 686844b34ec73b24931ff6cc4f6033f0072947a6db60acdc7fb3eaf157a581c8
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gmime.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp.bst
- core-deps/libgdata.bst
- core-deps/libmediaart.bst
- core-deps/totem-pl-parser.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-lua-factory=no
    -Denable-tracker=no
    -Denable-tracker3=yes
