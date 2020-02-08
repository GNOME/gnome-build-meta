kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-session/3.35/gnome-session-3.35.3.tar.xz
  ref: badbbac8a92dabcfa800c66ed85a92797f2d98a50baaf3d353d864bf69265dfa
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
