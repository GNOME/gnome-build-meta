kind: autotools

sources:
- kind: tar
  url: github_com:flatpak/xdg-dbus-proxy/releases/download/0.1.2/xdg-dbus-proxy-0.1.2.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
