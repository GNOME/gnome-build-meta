kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/41/gnome-session-41.3.tar.xz
  ref: ee4a229053f522624054889609335b885287cf67bbde0dc9fd882b01ec9b5b39
- kind: patch
  path: files/gnome-session/0001-Revert-gnome-session-don-t-validate-shell-before-usi.patch
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
