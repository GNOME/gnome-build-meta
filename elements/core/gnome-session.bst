kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-session/3.38/gnome-session-3.38.0.tar.xz
  ref: 7bcc0eb2cdba4b3f6d1b459b3a30873b7bb65b383c1f6a5f63c3e3b5c7943d67

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
