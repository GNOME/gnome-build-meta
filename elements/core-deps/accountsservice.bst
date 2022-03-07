kind: meson

sources:
- kind: tar
  base-dir: ''
  url: freedesktop_software:accountsservice/accountsservice-22.08.8.tar.xz

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson: meson %{build-dir} */ %{meson-args}
