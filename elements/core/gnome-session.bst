kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-session/3.36/gnome-session-3.36.0.tar.xz
  ref: d54b38b818c812f64b82cc6a1279e3ca5a6e391ee662793322a38cab5670bb7a
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
