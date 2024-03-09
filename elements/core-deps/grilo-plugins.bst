kind: meson
sources:
- kind: git_repo
  url: gnome:grilo-plugins.git
  track: master
  ref: grilo-plugins-0.3.16-21-g60ad13d18d2b2cc88a8d54265314fa97bc81734c
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gmime.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/totem-pl-parser.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-lua-factory=no
    -Denable-tracker=no
    -Denable-tracker3=yes
