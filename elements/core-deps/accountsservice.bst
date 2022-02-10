kind: meson

sources:
- kind: tar
  url: freedesktop_software:accountsservice/accountsservice-22.04.62.tar.xz
# This patch needs to be updated (or hopefully dropped) when updating
# See https://gitlab.freedesktop.org/accountsservice/accountsservice/-/issues/99
- kind: patch
  path: files/accountsservice/version.patch

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
