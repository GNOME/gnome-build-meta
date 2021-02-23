kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/40/gnome-session-40.beta.tar.xz
  ref: 2930f1f396b48e06726b04bbba109f7bea73a3ded2c943324f301820bd332846

build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
